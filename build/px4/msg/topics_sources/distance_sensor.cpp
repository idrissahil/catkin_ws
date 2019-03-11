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

/* Auto-generated by genmsg_cpp from file distance_sensor.msg */


#include <cinttypes>
#include <px4_log.h>
#include <px4_defines.h>
#include <uORB/topics/distance_sensor.h>
#include <drivers/drv_hrt.h>
#include <lib/drivers/device/Device.hpp>

constexpr char __orb_distance_sensor_fields[] = "uint64_t timestamp;float min_distance;float max_distance;float current_distance;float covariance;int8_t signal_quality;uint8_t type;uint8_t id;uint8_t orientation;uint8_t[4] _padding0;";

ORB_DEFINE(distance_sensor, struct distance_sensor_s, 28, __orb_distance_sensor_fields);


void print_message(const distance_sensor_s& message)
{
	PX4_INFO_RAW(" distance_sensor_s\n");
	if (message.timestamp != 0) {
		PX4_INFO_RAW("\ttimestamp: %" PRIu64 "  (%.6f seconds ago)\n", message.timestamp, hrt_elapsed_time(&message.timestamp) / 1e6);
	} else {
		PX4_INFO_RAW("\n");
	}
	PX4_INFO_RAW("\tmin_distance: %.4f\n", (double)message.min_distance);
	PX4_INFO_RAW("\tmax_distance: %.4f\n", (double)message.max_distance);
	PX4_INFO_RAW("\tcurrent_distance: %.4f\n", (double)message.current_distance);
	PX4_INFO_RAW("\tcovariance: %.4f\n", (double)message.covariance);
	PX4_INFO_RAW("\tsignal_quality: %d\n", message.signal_quality);
	PX4_INFO_RAW("\ttype: %u\n", message.type);
	PX4_INFO_RAW("\tid: %u\n", message.id);
	PX4_INFO_RAW("\torientation: %u\n", message.orientation);
	
}
