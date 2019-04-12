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

/* Auto-generated by genmsg_cpp from file sensor_bias.msg */


#include <cinttypes>
#include <px4_log.h>
#include <px4_defines.h>
#include <uORB/topics/sensor_bias.h>
#include <drivers/drv_hrt.h>
#include <lib/drivers/device/Device.hpp>

constexpr char __orb_sensor_bias_fields[] = "uint64_t timestamp;float accel_x;float accel_y;float accel_z;float gyro_x_bias;float gyro_y_bias;float gyro_z_bias;float accel_x_bias;float accel_y_bias;float accel_z_bias;float mag_x_bias;float mag_y_bias;float mag_z_bias;";

ORB_DEFINE(sensor_bias, struct sensor_bias_s, 56, __orb_sensor_bias_fields);


void print_message(const sensor_bias_s& message)
{
	PX4_INFO_RAW(" sensor_bias_s\n");
	if (message.timestamp != 0) {
		PX4_INFO_RAW("\ttimestamp: %" PRIu64 "  (%.6f seconds ago)\n", message.timestamp, hrt_elapsed_time(&message.timestamp) / 1e6);
	} else {
		PX4_INFO_RAW("\n");
	}
	PX4_INFO_RAW("\taccel_x: %.4f\n", (double)message.accel_x);
	PX4_INFO_RAW("\taccel_y: %.4f\n", (double)message.accel_y);
	PX4_INFO_RAW("\taccel_z: %.4f\n", (double)message.accel_z);
	PX4_INFO_RAW("\tgyro_x_bias: %.4f\n", (double)message.gyro_x_bias);
	PX4_INFO_RAW("\tgyro_y_bias: %.4f\n", (double)message.gyro_y_bias);
	PX4_INFO_RAW("\tgyro_z_bias: %.4f\n", (double)message.gyro_z_bias);
	PX4_INFO_RAW("\taccel_x_bias: %.4f\n", (double)message.accel_x_bias);
	PX4_INFO_RAW("\taccel_y_bias: %.4f\n", (double)message.accel_y_bias);
	PX4_INFO_RAW("\taccel_z_bias: %.4f\n", (double)message.accel_z_bias);
	PX4_INFO_RAW("\tmag_x_bias: %.4f\n", (double)message.mag_x_bias);
	PX4_INFO_RAW("\tmag_y_bias: %.4f\n", (double)message.mag_y_bias);
	PX4_INFO_RAW("\tmag_z_bias: %.4f\n", (double)message.mag_z_bias);

}