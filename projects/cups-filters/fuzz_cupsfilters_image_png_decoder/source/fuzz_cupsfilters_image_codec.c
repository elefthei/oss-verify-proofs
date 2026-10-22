// SPDX-License-Identifier: Apache-2.0
#define _GNU_SOURCE

#include <cupsfilters/image.h>
#include <cupsfilters/image-private.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>









#if !defined(CUPSFILTERS_IMAGE_CODEC_PNG)


#  define CUPSFILTERS_IMAGE_CODEC_PNG
#endif

#ifndef CUPSFILTERS_IMAGE_CODEC_MAX_INPUT
#  define CUPSFILTERS_IMAGE_CODEC_MAX_INPUT (2U * 1024U * 1024U)
#endif

#define IMAGE_CODEC_MAX_DIMENSION 4096U
#define IMAGE_CODEC_MAX_DECODED (16U * 1024U * 1024U)
#define IMAGE_CODEC_MAX_SCANLINE (64U * 1024U)







































































static void
close_image(cups_image_t *image)
{
  cups_ic_t *cached[IMAGE_CODEC_MAX_DECODED /
                  (CUPS_TILE_SIZE * CUPS_TILE_SIZE)] = {0};
  unsigned cached_count = 0;
  unsigned x_tiles;
  unsigned y_tiles;

  if (!image)
    return;

  if (image->cachefile >= 0)
  {
    close(image->cachefile);
    unlink(image->cachename);
  }

  x_tiles = (image->xsize + CUPS_TILE_SIZE - 1) / CUPS_TILE_SIZE;
  y_tiles = (image->ysize + CUPS_TILE_SIZE - 1) / CUPS_TILE_SIZE;
  if (image->tiles && x_tiles <= IMAGE_CODEC_MAX_DIMENSION / CUPS_TILE_SIZE &&
      y_tiles <= IMAGE_CODEC_MAX_DIMENSION / CUPS_TILE_SIZE)
  {
    for (unsigned y = 0; y < y_tiles; y ++)
    {
      if (!image->tiles[y])
        continue;
      for (unsigned x = 0; x < x_tiles; x ++)
      {
        cups_ic_t *entry = image->tiles[y][x].ic;
        unsigned seen = 0;

        if (!entry)
          continue;
        while (seen < cached_count && cached[seen] != entry)
          seen ++;
        if (seen == cached_count &&
            cached_count < sizeof(cached) / sizeof(cached[0]))
          cached[cached_count ++] = entry;
      }
    }
  }

  for (unsigned i = 0; i < cached_count; i ++)
    free(cached[i]);
  if (image->tiles)
  {
    free(image->tiles[0]);
    free(image->tiles);
  }
  free(image);
}

static cups_image_t *
open_codec(FILE *fp, cups_icspace_t primary, cups_icspace_t secondary,
           int saturation, int hue, const cups_ib_t *lut)
{










  cups_image_t *image = (cups_image_t *)calloc(1, sizeof(cups_image_t));
  int status;

  if (!image)
  {
    fclose(fp);
    return (NULL);
  }

  image->cachefile = -1;
  image->max_ics = CUPS_TILE_MINIMUM;
  image->xppi = 200;
  image->yppi = 200;










  status = _cupsImageReadPNG(image, fp, primary, secondary, saturation, hue,
                           lut);

  if (status)
  {
    close_image(image);
    return (NULL);
  }

  return (image);

}

static uint32_t
read_be32(const uint8_t *data)
{
  return ((uint32_t)data[0] << 24) | ((uint32_t)data[1] << 16) |
         ((uint32_t)data[2] << 8) | data[3];
}

static uint32_t
hash_bytes(const uint8_t *data, size_t size)
{
  uint32_t hash = 2166136261U;

  for (size_t i = 0; i < size; i ++)
  {
    hash ^= data[i];
    hash *= 16777619U;
  }
  return (hash);
}





































































































































































































































































































static int
valid_png_budget(const uint8_t *data, size_t size)
{
  static const uint8_t signature[8] =
      {0x89, 'P', 'N', 'G', '\r', '\n', 0x1a, '\n'};
  uint32_t width;
  uint32_t height;
  uint64_t row_bits;
  uint64_t decoded;
  unsigned bit_depth;
  unsigned color_type;
  unsigned channels;

  if (size < 33 || memcmp(data, signature, sizeof(signature)) ||
      read_be32(data + 8) != 13 || memcmp(data + 12, "IHDR", 4))
    return (0);

  width = read_be32(data + 16);
  height = read_be32(data + 20);
  bit_depth = data[24];
  color_type = data[25];
  if (!width || !height || width > IMAGE_CODEC_MAX_DIMENSION ||
      height > IMAGE_CODEC_MAX_DIMENSION || data[26] != 0 ||
      data[27] != 0 || data[28] > 1)
    return (0);

  switch (color_type)
  {
    case 0 :
        channels = 1;
        if (bit_depth != 1 && bit_depth != 2 && bit_depth != 4 &&
            bit_depth != 8 && bit_depth != 16)
          return (0);
        break;
    case 2 :
        channels = 3;
        if (bit_depth != 8 && bit_depth != 16)
          return (0);
        break;
    case 3 :
        channels = 1;
        if (bit_depth != 1 && bit_depth != 2 && bit_depth != 4 &&
            bit_depth != 8)
          return (0);
        break;
    case 4 :
        channels = 2;
        if (bit_depth != 8 && bit_depth != 16)
          return (0);
        break;
    case 6 :
        channels = 4;
        if (bit_depth != 8 && bit_depth != 16)
          return (0);
        break;
    default :
        return (0);
  }

  row_bits = (uint64_t)width * channels * bit_depth;
  decoded = ((row_bits + 7U) / 8U + 1U) * height;
  return (decoded <= IMAGE_CODEC_MAX_DECODED);
}


static int
valid_codec_budget(const uint8_t *data, size_t size)
{





  return (valid_png_budget(data, size));

}

static FILE *
open_input(const uint8_t *data, size_t size)
{












  return (fmemopen((void *)data, size, "rb"));

}

typedef struct codec_run_s
{
  uint32_t image_hash;
  unsigned scanline_failures;
  int decoded;
} codec_run_t;

static void
hash_pixels(uint32_t *hash, const cups_ib_t *pixels, size_t size)
{
  for (size_t i = 0; i < size; i ++)
  {
    *hash ^= pixels[i];
    *hash *= 16777619U;
  }
}

static codec_run_t
run_codec(const uint8_t *data, size_t size, uint32_t input_hash,
          uint8_t sentinel)
{
  static const cups_icspace_t primary_modes[] = {
      CUPS_IMAGE_RGB, CUPS_IMAGE_WHITE, CUPS_IMAGE_RGB_CMYK,
      CUPS_IMAGE_CMYK, CUPS_IMAGE_CMY};
  static const cups_icspace_t secondary_modes[] = {
      CUPS_IMAGE_WHITE, CUPS_IMAGE_RGB, CUPS_IMAGE_RGB,
      CUPS_IMAGE_RGB, CUPS_IMAGE_RGB};
  cups_image_t *image;
  cups_ib_t lut[256];
  cups_ib_t *row = NULL;
  cups_ib_t *column = NULL;
  FILE *fp;
  codec_run_t result = {2166136261U, 0, 0};
  unsigned width;
  unsigned height;
  unsigned depth;
  unsigned mode;
  unsigned rows[5];
  unsigned row_count = 3;
  size_t row_size;
  size_t column_size;

  mode = input_hash % (sizeof(primary_modes) / sizeof(primary_modes[0]));
  for (unsigned i = 0; i < sizeof(lut); i ++)
    lut[i] = (input_hash & 0x20U) ? (cups_ib_t)(255U - i) : (cups_ib_t)i;

  fp = open_input(data, size);
  if (!fp)
    return (result);







  (void)sentinel;

  image = open_codec(fp, primary_modes[mode], secondary_modes[mode],
                     50 + (int)(input_hash % 151U),
                     (int)((input_hash >> 8) % 361U) - 180,
                     (input_hash & 0x40U) ? lut : NULL);




  /* The selected codec owns and closes fp. */
  if (!image)
    return (result);
  result.decoded = 1;

  width = cupsImageGetWidth(image);
  height = cupsImageGetHeight(image);
  depth = (unsigned)cupsImageGetDepth(image);
  if (!width || !height || !depth || width > IMAGE_CODEC_MAX_DIMENSION ||
      height > IMAGE_CODEC_MAX_DIMENSION ||
      (uint64_t)width * depth > IMAGE_CODEC_MAX_DECODED ||
      (uint64_t)height * depth > IMAGE_CODEC_MAX_DECODED)
    goto cleanup;

  row_size = (size_t)width * depth;
  column_size = (size_t)height * depth;
  row = (cups_ib_t *)malloc(row_size);
  column = (cups_ib_t *)malloc(column_size);
  if (!row || !column)
    goto cleanup;

  cupsImageSetMaxTiles(image, 10 + (int)((input_hash >> 16) % 3U) * 8);
  rows[0] = 0;
  rows[1] = height / 2;
  rows[2] = height - 1;








  hash_pixels(&result.image_hash, (const cups_ib_t *)&width, sizeof(width));
  hash_pixels(&result.image_hash, (const cups_ib_t *)&height, sizeof(height));
  hash_pixels(&result.image_hash, (const cups_ib_t *)&depth, sizeof(depth));
  for (unsigned i = 0; i < row_count; i ++)
  {
    memset(row, 0x3c, row_size);
    if (!cupsImageGetRow(image, 0, (int)rows[i], (int)width, row))
      hash_pixels(&result.image_hash, row, row_size);
  }
  for (unsigned x_index = 0; x_index < 3; x_index ++)
  {
    unsigned x = x_index == 0 ? 0 : (x_index == 1 ? width / 2 : width - 1);

    memset(column, 0xc3, column_size);
    if (!cupsImageGetCol(image, (int)x, 0, (int)height, column))
      hash_pixels(&result.image_hash, column, column_size);
  }

cleanup:
  free(column);
  free(row);
  close_image(image);
  return (result);
}

int
LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
  codec_run_t first;
  uint32_t input_hash;

  if (!data || size > CUPSFILTERS_IMAGE_CODEC_MAX_INPUT ||
      !valid_codec_budget(data, size))
    return (0);

  input_hash = hash_bytes(data, size);
  first = run_codec(data, size, input_hash, 0xa5);












  return (0);
}
