/************************************************************************************************
 * libc/misc/lib_crc8.c
 *
 * This file is a part of NuttX:
 *
 *   Copyright (C) 2014 Ken Pettit. All rights reserved.
 *   Author: Ken Pettit <pettitkd@gmail.com>
 *
 * References:
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name NuttX nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ************************************************************************************************/

/************************************************************************************************
 * Included Files
 ************************************************************************************************/

#include <sys/types.h>
#include <stdint.h>
#include <crc8.h>

/************************************************************************************************
 * Private Data
 ************************************************************************************************/

/************************************************************************************************
 * CRC8 table generated with:
 *
 *   #define POLY 0xB2   // ((uint8_t) 0x14D) ^ 0xFF
 *
 *   printf("    ");
 *   for (y = 0; y < 256; y++)
 *     {
 *       crc = y;
 *       for (x = 0; x < 8; x++)
 *         {
 *           crc = (crc & 1) ? POLY ^ (crc >> 1) : crc >> 1;
 *         }
 *
 *     printf("0x%02X, ", crc);
 *     if ((y & 0x07) == 0x7)
 *       {
 *         printf("\n    ");
 *       }
 *   }
 *
 ************************************************************************************************/

static const uint8_t crc8_tab[256] =
{
  0x00, 0x3e, 0x7c, 0x42, 0xf8, 0xc6, 0x84, 0xba,
  0x95, 0xab, 0xe9, 0xd7, 0x6d, 0x53, 0x11, 0x2f,
  0x4f, 0x71, 0x33, 0x0d, 0xb7, 0x89, 0xcb, 0xf5,
  0xda, 0xe4, 0xa6, 0x98, 0x22, 0x1c, 0x5e, 0x60,
  0x9e, 0xa0, 0xe2, 0xdc, 0x66, 0x58, 0x1a, 0x24,
  0x0b, 0x35, 0x77, 0x49, 0xf3, 0xcd, 0x8f, 0xb1,
  0xd1, 0xef, 0xad, 0x93, 0x29, 0x17, 0x55, 0x6b,
  0x44, 0x7a, 0x38, 0x06, 0xbc, 0x82, 0xc0, 0xfe,
  0x59, 0x67, 0x25, 0x1b, 0xa1, 0x9f, 0xdd, 0xe3,
  0xcc, 0xf2, 0xb0, 0x8e, 0x34, 0x0a, 0x48, 0x76,
  0x16, 0x28, 0x6a, 0x54, 0xee, 0xd0, 0x92, 0xac,
  0x83, 0xbd, 0xff, 0xc1, 0x7b, 0x45, 0x07, 0x39,
  0xc7, 0xf9, 0xbb, 0x85, 0x3f, 0x01, 0x43, 0x7d,
  0x52, 0x6c, 0x2e, 0x10, 0xaa, 0x94, 0xd6, 0xe8,
  0x88, 0xb6, 0xf4, 0xca, 0x70, 0x4e, 0x0c, 0x32,
  0x1d, 0x23, 0x61, 0x5f, 0xe5, 0xdb, 0x99, 0xa7,
  0xb2, 0x8c, 0xce, 0xf0, 0x4a, 0x74, 0x36, 0x08,
  0x27, 0x19, 0x5b, 0x65, 0xdf, 0xe1, 0xa3, 0x9d,
  0xfd, 0xc3, 0x81, 0xbf, 0x05, 0x3b, 0x79, 0x47,
  0x68, 0x56, 0x14, 0x2a, 0x90, 0xae, 0xec, 0xd2,
  0x2c, 0x12, 0x50, 0x6e, 0xd4, 0xea, 0xa8, 0x96,
  0xb9, 0x87, 0xc5, 0xfb, 0x41, 0x7f, 0x3d, 0x03,
  0x63, 0x5d, 0x1f, 0x21, 0x9b, 0xa5, 0xe7, 0xd9,
  0xf6, 0xc8, 0x8a, 0xb4, 0x0e, 0x30, 0x72, 0x4c,
  0xeb, 0xd5, 0x97, 0xa9, 0x13, 0x2d, 0x6f, 0x51,
  0x7e, 0x40, 0x02, 0x3c, 0x86, 0xb8, 0xfa, 0xc4,
  0xa4, 0x9a, 0xd8, 0xe6, 0x5c, 0x62, 0x20, 0x1e,
  0x31, 0x0f, 0x4d, 0x73, 0xc9, 0xf7, 0xb5, 0x8b,
  0x75, 0x4b, 0x09, 0x37, 0x8d, 0xb3, 0xf1, 0xcf,
  0xe0, 0xde, 0x9c, 0xa2, 0x18, 0x26, 0x64, 0x5a,
  0x3a, 0x04, 0x46, 0x78, 0xc2, 0xfc, 0xbe, 0x80,
  0xaf, 0x91, 0xd3, 0xed, 0x57, 0x69, 0x2b, 0x15
};

/************************************************************************************************
 * Public Functions
 ************************************************************************************************/

/************************************************************************************************
 * Name: crc8part
 *
 * Description:
 *   Continue CRC calculation on a part of the buffer.
 *
 ************************************************************************************************/

uint8_t crc8part(FAR const uint8_t *src, size_t len, uint8_t crc8val)
{
  size_t i;

  crc8val ^= 0xff;
  for (i = 0; i < len; i++)
    {
      crc8val = crc8_tab[crc8val ^ src[i]];
    }

  return crc8val ^ 0xff;
}

/************************************************************************************************
 * Name: crc8
 *
 * Description:
 *   Return a 8-bit CRC of the contents of the 'src' buffer, length 'len' using a CRC with
 *   the polynomial x^8+x^6+x^3+x^2+1 (Koopman, et al. "0xA6" polynomial).
 *
 ************************************************************************************************/

uint8_t crc8(FAR const uint8_t *src, size_t len)
{
  return crc8part(src, len, 0);
}
