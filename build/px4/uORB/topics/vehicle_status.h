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

/* Auto-generated by genmsg_cpp from file vehicle_status.msg */


#pragma once


#include <uORB/uORB.h>


#ifndef __cplusplus
#define VEHICLE_STATUS_ARMING_STATE_INIT 0
#define VEHICLE_STATUS_ARMING_STATE_STANDBY 1
#define VEHICLE_STATUS_ARMING_STATE_ARMED 2
#define VEHICLE_STATUS_ARMING_STATE_STANDBY_ERROR 3
#define VEHICLE_STATUS_ARMING_STATE_REBOOT 4
#define VEHICLE_STATUS_ARMING_STATE_IN_AIR_RESTORE 5
#define VEHICLE_STATUS_ARMING_STATE_MAX 6
#define VEHICLE_STATUS_FAILURE_NONE 0
#define VEHICLE_STATUS_FAILURE_ROLL 1
#define VEHICLE_STATUS_FAILURE_PITCH 2
#define VEHICLE_STATUS_FAILURE_ALT 4
#define VEHICLE_STATUS_HIL_STATE_OFF 0
#define VEHICLE_STATUS_HIL_STATE_ON 1
#define VEHICLE_STATUS_NAVIGATION_STATE_MANUAL 0
#define VEHICLE_STATUS_NAVIGATION_STATE_ALTCTL 1
#define VEHICLE_STATUS_NAVIGATION_STATE_POSCTL 2
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_MISSION 3
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_LOITER 4
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_RTL 5
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_RCRECOVER 6
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_RTGS 7
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_LANDENGFAIL 8
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_LANDGPSFAIL 9
#define VEHICLE_STATUS_NAVIGATION_STATE_ACRO 10
#define VEHICLE_STATUS_NAVIGATION_STATE_UNUSED 11
#define VEHICLE_STATUS_NAVIGATION_STATE_DESCEND 12
#define VEHICLE_STATUS_NAVIGATION_STATE_TERMINATION 13
#define VEHICLE_STATUS_NAVIGATION_STATE_OFFBOARD 14
#define VEHICLE_STATUS_NAVIGATION_STATE_STAB 15
#define VEHICLE_STATUS_NAVIGATION_STATE_RATTITUDE 16
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_TAKEOFF 17
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_LAND 18
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_FOLLOW_TARGET 19
#define VEHICLE_STATUS_NAVIGATION_STATE_AUTO_PRECLAND 20
#define VEHICLE_STATUS_NAVIGATION_STATE_MAX 21
#define VEHICLE_STATUS_RC_IN_MODE_DEFAULT 0
#define VEHICLE_STATUS_RC_IN_MODE_OFF 1
#define VEHICLE_STATUS_RC_IN_MODE_GENERATED 2

#endif


#ifdef __cplusplus
struct __EXPORT vehicle_status_s {
#else
struct vehicle_status_s {
#endif
	uint64_t timestamp;
	uint32_t onboard_control_sensors_present;
	uint32_t onboard_control_sensors_enabled;
	uint32_t onboard_control_sensors_health;
	uint8_t nav_state;
	uint8_t arming_state;
	uint8_t hil_state;
	bool failsafe;
	uint8_t system_type;
	uint8_t system_id;
	uint8_t component_id;
	bool is_rotary_wing;
	bool is_vtol;
	bool vtol_fw_permanent_stab;
	bool in_transition_mode;
	bool in_transition_to_fw;
	bool rc_signal_lost;
	uint8_t rc_input_mode;
	bool data_link_lost;
	bool high_latency_data_link_active;
	uint8_t data_link_lost_counter;
	bool engine_failure;
	bool mission_failure;
	uint8_t failure_detector_status;


#ifdef __cplusplus
	static constexpr uint8_t ARMING_STATE_INIT = 0;
	static constexpr uint8_t ARMING_STATE_STANDBY = 1;
	static constexpr uint8_t ARMING_STATE_ARMED = 2;
	static constexpr uint8_t ARMING_STATE_STANDBY_ERROR = 3;
	static constexpr uint8_t ARMING_STATE_REBOOT = 4;
	static constexpr uint8_t ARMING_STATE_IN_AIR_RESTORE = 5;
	static constexpr uint8_t ARMING_STATE_MAX = 6;
	static constexpr uint8_t FAILURE_NONE = 0;
	static constexpr uint8_t FAILURE_ROLL = 1;
	static constexpr uint8_t FAILURE_PITCH = 2;
	static constexpr uint8_t FAILURE_ALT = 4;
	static constexpr uint8_t HIL_STATE_OFF = 0;
	static constexpr uint8_t HIL_STATE_ON = 1;
	static constexpr uint8_t NAVIGATION_STATE_MANUAL = 0;
	static constexpr uint8_t NAVIGATION_STATE_ALTCTL = 1;
	static constexpr uint8_t NAVIGATION_STATE_POSCTL = 2;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_MISSION = 3;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_LOITER = 4;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_RTL = 5;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_RCRECOVER = 6;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_RTGS = 7;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_LANDENGFAIL = 8;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_LANDGPSFAIL = 9;
	static constexpr uint8_t NAVIGATION_STATE_ACRO = 10;
	static constexpr uint8_t NAVIGATION_STATE_UNUSED = 11;
	static constexpr uint8_t NAVIGATION_STATE_DESCEND = 12;
	static constexpr uint8_t NAVIGATION_STATE_TERMINATION = 13;
	static constexpr uint8_t NAVIGATION_STATE_OFFBOARD = 14;
	static constexpr uint8_t NAVIGATION_STATE_STAB = 15;
	static constexpr uint8_t NAVIGATION_STATE_RATTITUDE = 16;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_TAKEOFF = 17;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_LAND = 18;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_FOLLOW_TARGET = 19;
	static constexpr uint8_t NAVIGATION_STATE_AUTO_PRECLAND = 20;
	static constexpr uint8_t NAVIGATION_STATE_MAX = 21;
	static constexpr uint8_t RC_IN_MODE_DEFAULT = 0;
	static constexpr uint8_t RC_IN_MODE_OFF = 1;
	static constexpr uint8_t RC_IN_MODE_GENERATED = 2;

#endif
};

/* register this as object request broker structure */
ORB_DECLARE(vehicle_status);


#ifdef __cplusplus
void print_message(const vehicle_status_s& message);
#endif