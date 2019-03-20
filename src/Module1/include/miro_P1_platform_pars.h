/**	@file
	@section COPYRIGHT
	Copyright (C) 2019 Consequential Robotics (CqR)

	@section AUTHOR
	Consequential Robotics http://consequentialrobotics.com

	@section LICENSE
	For a full copy of the license agreement, see LICENSE.MDK in
	the MDK root directory.

	Subject to the terms of this Agreement, Consequential Robotics
	grants to you a limited, non-exclusive, non-transferable license,
	without right to sub-license, to use MIRO Developer Kit in
	accordance with this Agreement and any other written agreement
	with Consequential Robotics. Consequential Robotics does not
	transfer the title of MIRO Developer Kit to you; the license
	granted to you is not a sale. This agreement is a binding legal
	agreement between Consequential Robotics and the purchasers or
	users of MIRO Developer Kit.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
	OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
	OTHER DEALINGS IN THE SOFTWARE.

	@section DESCRIPTION

*/



#ifndef INC_MIRO_P1_PLATFORM_PARS_H
#define INC_MIRO_P1_PLATFORM_PARS_H



#include "miro_platform.h"
#include "miro_types.h"



struct MIRO_SERVO_CONSTRAINT
{
	uint8_t min;
	uint8_t max;
};

struct MIRO_P1_PLATFORM_PARS
{
	/**
		Wheel diameter (mm).
	*/
	float wheel_diam_mm;

	/**
		Wheel track (mm).
	*/
	float wheel_track_mm;

	/**
		Wheel gearbox ratio (unitless).
	*/
	float wheel_gearbox_ratio;

	/**
		Command speed to send to the motors to achieve physical
		speed of 1 mm/sec. See Data/141028c for derivation.
	*/
	float wheel_cmd_speed_per_mmpersec;

	/**
		Maximum speed that the wheels can achieve, in mm/sec.
	*/
	float wheel_max_speed_mmpersec;

	/**
		Number of counts from shaft encoders for each turn of
		a motor shaft.
	*/
	int8_t wheel_counts_per_motor_rot;

uint8_t __align1[1];

	/**
		Commanded speeds that are too low will cause only motor
		buzzing and no actual movement. There is no point in
		sending these speeds, so we can set this value to save
		on the buzzing.

		Though, if the integral controllers are enabled in
		UC1, even a cmd_speed of unity will eventually cause
		some movement, in which case this value should be set
		to zero.
	*/
	int8_t wheel_cmd_speed_min;

	/**
		127 is the physical maximum command speed that can be
		sent to the motors. This value may be lower than that,
		and is the highest value that will be sent by the low
		level controller. Higher level controllers should
		assume that no higher value is available, therefore.
	*/
	int8_t wheel_cmd_speed_max;

uint8_t __align2[2];

	//	DOF constraints
	struct
	{
		struct MIRO_SERVO_CONSTRAINT lift;
		struct MIRO_SERVO_CONSTRAINT yaw;
		struct MIRO_SERVO_CONSTRAINT tilt;
		struct MIRO_SERVO_CONSTRAINT pitch;
		struct MIRO_SERVO_CONSTRAINT eyelids;
	}
	constraint;
};

#define MIRO_ACC_CONFIG_WORD(addr_x, addr_y, flip_x, flip_y, flip_z) \
	(addr_x | addr_y << 2 | flip_x << 4 | flip_y << 5 | flip_z << 6)

//	default constraints are non-constraints - P2 will have to set
//	them to other values for them to become effective
#define MIRO_SERVO_MIN				0
#define MIRO_SERVO_MAX				255

#define __MIRO_P1_PLATFORM_PARS_DEFAULT(pars) \
	__SET_FIELD(pars, wheel_diam_mm, MIRO_WHEEL_DIAM_MM); \
	__SET_FIELD(pars, wheel_track_mm, MIRO_WHEEL_TRACK_MM); \
	__SET_FIELD(pars, wheel_gearbox_ratio, MIRO_WHEEL_GEARBOX_RATIO); \
	__SET_FIELD(pars, wheel_cmd_speed_per_mmpersec, MIRO_WHEEL_CMD_SPEED_PER_MMPERSEC); \
	__SET_FIELD(pars, wheel_max_speed_mmpersec, MIRO_WHEEL_MAX_SPEED_MMPERSEC); \
	__SET_FIELD(pars, wheel_counts_per_motor_rot, MIRO_WHEEL_COUNTS_PER_MOTOR_ROT); \
	__SET_FIELD(pars, wheel_cmd_speed_min, 0); \
	__SET_FIELD(pars, wheel_cmd_speed_max, 127); \
	struct MIRO_SERVO_CONSTRAINT con_def = { MIRO_SERVO_MIN, MIRO_SERVO_MAX }; \
	__SET_FIELD(pars, constraint.lift, con_def); \
	__SET_FIELD(pars, constraint.yaw, con_def); \
	__SET_FIELD(pars, constraint.tilt, con_def); \
	__SET_FIELD(pars, constraint.pitch, con_def); \
	__SET_FIELD(pars, constraint.eyelids, con_def);

#define MIRO_P1_PLATFORM_PARS_SIZE 36

__PREPROC_ASSERT_SIZE(MIRO_P1_PLATFORM_PARS);



#endif // INC_MIRO_P1_PLATFORM_PARS_H



