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

	This file provides platform physical parameters. See accompanying
	notes file for [references] and source information.
*/

#ifndef INC_MIRO_PLATFORM_H
#define INC_MIRO_PLATFORM_H



/*
	SECTION P1

	These parameters are used by P1 and P2.
*/

//	main drive physical parameters
#define MIRO_WHEEL_DIAM_MM					90.0f
#define MIRO_WHEEL_TRACK_MM					164.0f
#define MIRO_WHEEL_MAX_SPEED_MMPERSEC		400.0f

//	these additional parameters are used to convert between P1
//	signal space (normalised drive downstream and encoder counts
//	upstream) and P2 signal space (mm/sec both ways). for
//	applications working with the P2 signal space, these parameters
//	are not required, since the conversion is performed in P2.
#define MIRO_WHEEL_COUNTS_PER_MOTOR_ROT		4
#define MIRO_WHEEL_GEARBOX_RATIO			39.822f
#define MIRO_WHEEL_CMD_SPEED_PER_MMPERSEC	0.21f



/*
	SECTION P2

	These parameters are used by P2.
*/

/** DOF speed constants; see platform notes for details. */
#define MIRO_DOF_MAXIMUM_SPEED				253
#define MIRO_DOF_ENABLE_POS_DEADZONE		254
#define MIRO_DOF_DISABLE_POS_DEADZONE		255

/** Macros to convert between degrees and radians. */
#define __DEG2RAD(value) (value * (MIRO_PI / 180.0f))
#define MIRO_RAD2DEG(value) (value * (180.0f / MIRO_PI))



////////////////////////////////////////////////////////////////
//
//	TILT
//
////////////////////////////////////////////////////////////////

/** Constants associated with TILT DOF (currently fixed). */

#define MIRO_TILT_COUNTS_AT_ZERO_RAD			(100.0f)
#define MIRO_TILT_COUNTS_PER_RAD				(100.0f)

#define MIRO_TILT_MIN_RAD						__DEG2RAD(   -5.0f)
#define MIRO_TILT_MAX_RAD						__DEG2RAD(   -5.0f)
#define MIRO_TILT_INI_RAD						MIRO_TILT_MIN_RAD

#define MIRO_TILT_MIN_COUNTS					50
#define MIRO_TILT_MAX_COUNTS					150
#define MIRO_TILT_CALIB_COUNTS					100
#define MIRO_TILT_SPEED_COUNTS					MIRO_DOF_MAXIMUM_SPEED



////////////////////////////////////////////////////////////////
//
//	LIFT
//
////////////////////////////////////////////////////////////////

/** Constants associated with LIFT DOF. */

#define MIRO_LIFT_COUNTS_AT_ZERO_RAD			(272.0f)
#define MIRO_LIFT_COUNTS_PER_RAD				(-183.3465f)

#define MIRO_LIFT_MIN_RAD						__DEG2RAD(   17.0f) // [4]
#define MIRO_LIFT_MAX_RAD						__DEG2RAD(   65.0f) // [4]
#define MIRO_LIFT_INI_RAD						MIRO_LIFT_MIN_RAD // as upright as possible, for convenient head maintenance

#define MIRO_LIFT_MIN_COUNTS					0
#define MIRO_LIFT_MAX_COUNTS					255
#define MIRO_LIFT_CALIB_COUNTS					128
#define MIRO_LIFT_SPEED_COUNTS					MIRO_DOF_MAXIMUM_SPEED

//	these are defaults used in P1 only if P2 is not connected
#define MIRO_LIFT_UPRIGHT						((uint8_t)(MIRO_LIFT_MIN_RAD * MIRO_LIFT_COUNTS_PER_RAD + MIRO_LIFT_COUNTS_AT_ZERO_RAD))
#define MIRO_LIFT_SHELL_RELEASE					((uint8_t)(MIRO_LIFT_MAX_RAD * MIRO_LIFT_COUNTS_PER_RAD + MIRO_LIFT_COUNTS_AT_ZERO_RAD))



////////////////////////////////////////////////////////////////
//
//	YAW
//
////////////////////////////////////////////////////////////////

/** Constants associated with YAW DOF. */

#define MIRO_YAW_COUNTS_AT_ZERO_RAD			(128.0f)     // [6]
#define MIRO_YAW_COUNTS_PER_RAD				(64.0f / __DEG2RAD(45.0f)) // [4]

#define MIRO_YAW_MIN_RAD					__DEG2RAD(   -60.0f) // [2]
#define MIRO_YAW_MAX_RAD					__DEG2RAD(    60.0f) // [2]
#define MIRO_YAW_INI_RAD					__DEG2RAD(     0.0f)

#define MIRO_YAW_MIN_COUNTS					0
#define MIRO_YAW_MAX_COUNTS					255
#define MIRO_YAW_CALIB_COUNTS				((uint8_t)MIRO_YAW_COUNTS_AT_ZERO_RAD)
#define MIRO_YAW_SPEED_COUNTS				(MIRO_DOF_MAXIMUM_SPEED / 6)



////////////////////////////////////////////////////////////////
//
//	PITCH
//
////////////////////////////////////////////////////////////////

/** Constants associated with PITCH DOF. */

#define MIRO_PITCH_COUNTS_AT_ZERO_RAD		(107.000f) // [9]
#define MIRO_PITCH_COUNTS_PER_RAD			(-204.086f) // [5]

#define MIRO_PITCH_MIN_RAD					__DEG2RAD(  -15.0f) // [9]
#define MIRO_PITCH_MAX_RAD					__DEG2RAD(    8.0f) // [9]
#define MIRO_PITCH_INI_RAD					-(MIRO_TILT_INI_RAD+MIRO_LIFT_INI_RAD) // tend to horizontal

#define MIRO_PITCH_MIN_COUNTS				0
#define MIRO_PITCH_MAX_COUNTS				255
#define MIRO_PITCH_CALIB_COUNTS				((uint8_t)MIRO_PITCH_COUNTS_AT_ZERO_RAD)
#define MIRO_PITCH_SPEED_COUNTS				MIRO_DOF_MAXIMUM_SPEED



////////////////////////////////////////////////////////////////
//
//	EYELIDS
//
////////////////////////////////////////////////////////////////

/** Constants associated with EYELIDS DOF. */

#define MIRO_EYELIDS_MIN_COUNTS			120
#define MIRO_EYELIDS_MAX_COUNTS			185
#define MIRO_EYELIDS_CALIB_COUNTS		MIRO_EYELIDS_MAX_COUNTS
#define MIRO_EYELIDS_SPEED_COUNTS		192



////////////////////////////////////////////////////////////////
//
//	TAIL
//
////////////////////////////////////////////////////////////////

/** Constants associated with DROOP DOF. */

#define MIRO_DROOP_MIN_COUNTS			150
#define MIRO_DROOP_MAX_COUNTS			250
#define MIRO_DROOP_CALIB_COUNTS			MIRO_DROOP_MIN_COUNTS
#define MIRO_DROOP_SPEED_COUNTS			63

/** Constants associated with WAG DOF. */

#define MIRO_WAG_MIN_SPEED_COUNTS 25
#define MIRO_WAG_MAX_SPEED_COUNTS 100
#define MIRO_WAG_ZERO_POS_COUNTS 0 // or ~128, see miro_P0.h:UC14
#define MIRO_WAG_GRACE_POS_COUNTS 10



////////////////////////////////////////////////////////////////
//
//	EARS (ROTATE)
//
////////////////////////////////////////////////////////////////

/** Constants associated with ROTATE DOF. */

#define MIRO_ROTATE_MIN_COUNTS 90
#define MIRO_ROTATE_MAX_COUNTS 180
#define MIRO_ROTATE_CALIB_COUNTS MIRO_ROTATE_MIN_COUNTS
#define MIRO_ROTATE_SPEED_COUNTS 63

/** Constants associated with CURL DOF. */

#define MIRO_CURL_MIN_COUNTS 160
#define MIRO_CURL_MAX_COUNTS 220
#define MIRO_CURL_CALIB_COUNTS MIRO_CURL_MIN_COUNTS
#define MIRO_CURL_SPEED_COUNTS 63



////////////////////////////////////////////////////////////////
//
//	DIMENSIONS
//
////////////////////////////////////////////////////////////////

//	location of TILT joint in FOOT
#define MIRO_LOC_TILT_X	(  0.0f) // [1]
#define MIRO_LOC_TILT_Y	(  0.0f) // [8]
#define MIRO_LOC_TILT_Z	(  0.5f * MIRO_WHEEL_DIAM_MM ) // [8]

//	location of LIFT joint in BODY
#define MIRO_LOC_LIFT_X (  2.2f) // [3]
#define MIRO_LOC_LIFT_Y (  0.0f) // [1]
#define MIRO_LOC_LIFT_Z ( 80.7f - MIRO_LOC_TILT_Z ) // [3] (NB: inc. -MIRO_TILT_Z because specified figure is height above floor)

//	location of YAW joint in NECK
#define MIRO_LOC_YAW_X (  0.0f) // [1]
#define MIRO_LOC_YAW_Y (  0.0f) // [7]
#define MIRO_LOC_YAW_Z (120.1f) // [3]

//	location of PITCH joint in GIMBAL
#define MIRO_LOC_PITCH_X (  0.0f) // [1]
#define MIRO_LOC_PITCH_Y (  0.0f) // [7]
#define MIRO_LOC_PITCH_Z (  0.0f) // [7]

#define MIRO_LOC_NOSE_TIP_X ( 99.4f) // [3]
#define MIRO_LOC_NOSE_TIP_Y (  0.0f) // [1]
#define MIRO_LOC_NOSE_TIP_Z ( 25.0f) // [3]

#define MIRO_LOC_EYE_X ( 37.7f) // [3]
#define MIRO_LOC_EYE_Y (-43.1f) // [3]
#define MIRO_LOC_EYE_Z ( 56.8f) // [3]

#define MIRO_LOC_EAR_X (-47.4f) // [3]
#define MIRO_LOC_EAR_Y (-51.9f) // [3]
#define MIRO_LOC_EAR_Z ( 82.7f) // [3]

#define MIRO_LOC_SONAR_FOVEA_X (125.0f)
#define MIRO_LOC_SONAR_FOVEA_Y (  0.0f)
#define MIRO_LOC_SONAR_FOVEA_Z ( 25.0f)

#define MIRO_SONAR_READING_AT_1M (87.0f) // [10]

//	region sonar-local fovea can reach
#define MIRO_REACHABLE_Z_MIN 50.0f
#define MIRO_REACHABLE_Z_MAX 220.0f



////////////////////////////////////////////////////////////////
//
//	CAMERA MODEL
//
////////////////////////////////////////////////////////////////

#define MIRO_CAM_ELEVATION __DEG2RAD( 45.0f) // [3]

//	settings up to end 2016
/* DIV=21.0f [3], FOV=37.8f, ASPECT=1.0f, K2=-0.2f, K4=-0.2f */

//	Brown's Distortion Model
//	https://en.wikipedia.org/wiki/Distortion_(optics)#Software_correction
//	remeasured 17/01/17, for latest cameras
//	NB: K2=-0.75 and K4=0.25 is a good approximation of a cosine function
#define MIRO_CAM_DIVERGENCE __DEG2RAD( 27.0f)
#define MIRO_CAM_HORI_HALF_FOV __DEG2RAD(45.0f)
#define MIRO_CAM_PIXEL_ASPECT_RATIO 1.0f
#define MIRO_CAM_DISTORTION_MODEL_K1 -0.75f
#define MIRO_CAM_DISTORTION_MODEL_K2 0.25f

//	treated as spatial pars, but related to camera model
#define MIRO_CAM_GAZE_ELEVATION_MIN __DEG2RAD(30.0f) // [2]
#define MIRO_CAM_GAZE_ELEVATION_MAX __DEG2RAD(60.0f) // [2]



#endif



