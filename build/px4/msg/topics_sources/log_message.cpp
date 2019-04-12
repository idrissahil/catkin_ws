/****************************************************************************
 *
 *   Copyright (C) 2013-2016 PX4 Development Team. All rights reserved.
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
 * 3. Neither the name PX4 nor the names of its contributors may be
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
 ****************************************************************************/

/* Auto-generated by genmsg_cpp from file log_message.msg */


#include <cinttypes>
#include <px4_log.h>
#include <px4_defines.h>
#include <uORB/topics/log_message.h>
#include <drivers/drv_hrt.h>
#include <lib/drivers/device/Device.hpp>

constexpr char __orb_log_message_fields[] = "uint64_t timestamp;uint8_t severity;uint8_t[127] text;";

ORB_DEFINE(log_message, struct log_message_s, 136, __orb_log_message_fields);


void print_message(const log_message_s& message)
{
	PX4_INFO_RAW(" log_message_s\n");
	if (message.timestamp != 0) {
		PX4_INFO_RAW("\ttimestamp: %" PRIu64 "  (%.6f seconds ago)\n", message.timestamp, hrt_elapsed_time(&message.timestamp) / 1e6);
	} else {
		PX4_INFO_RAW("\n");
	}
	PX4_INFO_RAW("\tseverity: %u\n", message.severity);
	PX4_INFO_RAW("\ttext: [%u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u]\n", message.text[0], message.text[1], message.text[2], message.text[3], message.text[4], message.text[5], message.text[6], message.text[7], message.text[8], message.text[9], message.text[10], message.text[11], message.text[12], message.text[13], message.text[14], message.text[15], message.text[16], message.text[17], message.text[18], message.text[19], message.text[20], message.text[21], message.text[22], message.text[23], message.text[24], message.text[25], message.text[26], message.text[27], message.text[28], message.text[29], message.text[30], message.text[31], message.text[32], message.text[33], message.text[34], message.text[35], message.text[36], message.text[37], message.text[38], message.text[39], message.text[40], message.text[41], message.text[42], message.text[43], message.text[44], message.text[45], message.text[46], message.text[47], message.text[48], message.text[49], message.text[50], message.text[51], message.text[52], message.text[53], message.text[54], message.text[55], message.text[56], message.text[57], message.text[58], message.text[59], message.text[60], message.text[61], message.text[62], message.text[63], message.text[64], message.text[65], message.text[66], message.text[67], message.text[68], message.text[69], message.text[70], message.text[71], message.text[72], message.text[73], message.text[74], message.text[75], message.text[76], message.text[77], message.text[78], message.text[79], message.text[80], message.text[81], message.text[82], message.text[83], message.text[84], message.text[85], message.text[86], message.text[87], message.text[88], message.text[89], message.text[90], message.text[91], message.text[92], message.text[93], message.text[94], message.text[95], message.text[96], message.text[97], message.text[98], message.text[99], message.text[100], message.text[101], message.text[102], message.text[103], message.text[104], message.text[105], message.text[106], message.text[107], message.text[108], message.text[109], message.text[110], message.text[111], message.text[112], message.text[113], message.text[114], message.text[115], message.text[116], message.text[117], message.text[118], message.text[119], message.text[120], message.text[121], message.text[122], message.text[123], message.text[124], message.text[125], message.text[126]);

}