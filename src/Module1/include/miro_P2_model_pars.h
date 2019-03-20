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



#ifndef INC_MIRO_P2_MODEL_PARS_H
#define INC_MIRO_P2_MODEL_PARS_H



#include "miro_platform.h"
#include "miro_types.h"
#include "miro_P1_platform_pars.h"



////////////////////////////////////////////////////////////////
//
//		MODEL PARS
//
////////////////////////////////////////////////////////////////

enum MIRO_P2_DOF_ID
{
	/*
		All MIRO DOFs: 1 diff drive, 4 standard kinematic rotary
		DOFs, 1 cosmetic rotary (eyelids) and 3 cosmetic wobblers
		(two ears plus a tail).
	*/
	MIRO_DOF_WHEELS,
	MIRO_DOF_TILT,
	MIRO_DOF_LIFT,
	MIRO_DOF_YAW,
	MIRO_DOF_PITCH,
	MIRO_DOF_EYELIDS,
	MIRO_DOF_DROOP,
	MIRO_DOF_WAG,
	MIRO_DOF_ROTATE,
	MIRO_DOF_CURL,
	MIRO_DOF_ROTATE2,
	MIRO_DOF_CURL2,
	MIRO_DOF_COUNT
};

struct MIRO_P2_KINEMATIC_SERVO_PARS
{
	//	in counts
	uint8_t min_counts;
	uint8_t max_counts;
	uint8_t calib_counts;
	uint8_t speed_counts;

	//	in radians
	float counts_at_zero_rad;
	float counts_per_rad;
	float min_rad;
	float max_rad;
	float ini_rad;
};

#define MIRO_P2_KINEMATIC_SERVO_PARS_SIZE 24

struct MIRO_P2_COSMETIC_SERVO_PARS
{
	//	in counts
	uint8_t min_counts;
	uint8_t max_counts;
	uint8_t calib_counts;
	uint8_t speed_counts;
};

#define MIRO_P2_COSMETIC_SERVO_PARS_SIZE 4

struct MIRO_P2_COSMETIC_VELSERVO_PARS
{
	//	in counts
	uint8_t min_speed_counts;
	uint8_t max_speed_counts;
	uint8_t zero_pos_counts;
	uint8_t grace_pos_counts;
};

#define MIRO_P2_COSMETIC_VELSERVO_PARS_SIZE 4

struct MIRO_P2_DIM_PARS
{
	//	locations of tilt joint in FOOT
	struct MIRO_FLOAT3 tilt_joint;

	//	location of lift joint in BODY
	struct MIRO_FLOAT3 lift_joint;

	//	location of yaw joint in NECK
	struct MIRO_FLOAT3 yaw_joint;

	//	location of pitch joint in GMBL
	struct MIRO_FLOAT3 pitch_joint;

	//	location of nose tip in HEAD
	struct MIRO_FLOAT3 nose_tip;

	//	location of (right) eye in HEAD
	struct MIRO_FLOAT3 right_eye;

	//	location of (right) ear in HEAD
	struct MIRO_FLOAT3 right_ear;

	//	location of sonar fovea in HEAD
	struct MIRO_FLOAT3 sonar_fovea;

	//	reachable range
	struct
	{
		float z_min;
		float z_max;
	}
	reachable;
};

#define MIRO_P2_DIM_PARS_SIZE sizeof(struct MIRO_P2_DIM_PARS)

struct MIRO_P2_DOF_COMMON_PARS
{
	//	instruction codes for low-level DOF controllers
	uint8_t enable_pos_deadzone;
	uint8_t disable_pos_deadzone;
	uint8_t P2_pos_deadzone_width;

uint8_t __align1[1];
};

#define MIRO_P2_DOF_COMMON_PARS_SIZE sizeof(struct MIRO_P2_DOF_COMMON_PARS)

struct MIRO_P2_PLATFORM_PARS
{
	//	platform geometry
	struct MIRO_P2_DIM_PARS dims;

	//	common to all DOFs
	struct MIRO_P2_DOF_COMMON_PARS dof;

	//	DOFs
	//	NB: wheels DOF is parametrised in MIRO_P1_PLATFORM_PARS
	struct MIRO_P2_KINEMATIC_SERVO_PARS tilt;
	struct MIRO_P2_KINEMATIC_SERVO_PARS lift;
	struct MIRO_P2_KINEMATIC_SERVO_PARS yaw;
	struct MIRO_P2_KINEMATIC_SERVO_PARS pitch;
	struct MIRO_P2_COSMETIC_SERVO_PARS eyelids;
	struct MIRO_P2_COSMETIC_SERVO_PARS droop;
	struct MIRO_P2_COSMETIC_VELSERVO_PARS wag;
	struct MIRO_P2_COSMETIC_SERVO_PARS rotate;
	struct MIRO_P2_COSMETIC_SERVO_PARS curl;
};

#define __MIRO_VECTOR_3_SET(vec, val) \
do { \
	vec.x = val ## _X; \
	vec.y = val ## _Y; \
	vec.z = val ## _Z; \
} while(0)

#define __MIRO_P2_PLATFORM_PARS_DEFAULT(pars) \
do { \
	__MIRO_VECTOR_3_SET(pars.dims.tilt_joint, MIRO_LOC_TILT); \
	__MIRO_VECTOR_3_SET(pars.dims.lift_joint, MIRO_LOC_LIFT); \
	__MIRO_VECTOR_3_SET(pars.dims.yaw_joint, MIRO_LOC_YAW); \
	__MIRO_VECTOR_3_SET(pars.dims.pitch_joint, MIRO_LOC_PITCH); \
	__MIRO_VECTOR_3_SET(pars.dims.nose_tip, MIRO_LOC_NOSE_TIP); \
	__MIRO_VECTOR_3_SET(pars.dims.right_eye, MIRO_LOC_EYE); \
	__MIRO_VECTOR_3_SET(pars.dims.right_ear, MIRO_LOC_EAR); \
	__MIRO_VECTOR_3_SET(pars.dims.sonar_fovea, MIRO_LOC_SONAR_FOVEA); \
	pars.dims.reachable.z_min = MIRO_REACHABLE_Z_MIN; \
	pars.dims.reachable.z_max = MIRO_REACHABLE_Z_MAX; \
	\
	pars.dof.enable_pos_deadzone = MIRO_DOF_ENABLE_POS_DEADZONE; \
	pars.dof.disable_pos_deadzone = MIRO_DOF_DISABLE_POS_DEADZONE; \
	pars.dof.P2_pos_deadzone_width = 1; \
	\
	pars.tilt.min_counts = MIRO_TILT_MIN_COUNTS; \
	pars.tilt.max_counts = MIRO_TILT_MAX_COUNTS; \
	pars.tilt.calib_counts = MIRO_TILT_CALIB_COUNTS; \
	pars.tilt.speed_counts = MIRO_TILT_SPEED_COUNTS; \
	pars.tilt.counts_at_zero_rad = MIRO_TILT_COUNTS_AT_ZERO_RAD; \
	pars.tilt.counts_per_rad = MIRO_TILT_COUNTS_PER_RAD; \
	pars.tilt.min_rad = MIRO_TILT_MIN_RAD; \
	pars.tilt.max_rad = MIRO_TILT_MAX_RAD; \
	pars.tilt.ini_rad = MIRO_TILT_INI_RAD; \
	\
	pars.lift.min_counts = MIRO_LIFT_MIN_COUNTS; \
	pars.lift.max_counts = MIRO_LIFT_MAX_COUNTS; \
	pars.lift.calib_counts = MIRO_LIFT_CALIB_COUNTS; \
	pars.lift.speed_counts = MIRO_LIFT_SPEED_COUNTS; \
	pars.lift.counts_at_zero_rad = MIRO_LIFT_COUNTS_AT_ZERO_RAD; \
	pars.lift.counts_per_rad = MIRO_LIFT_COUNTS_PER_RAD; \
	pars.lift.min_rad = MIRO_LIFT_MIN_RAD; \
	pars.lift.max_rad = MIRO_LIFT_MAX_RAD; \
	pars.lift.ini_rad = MIRO_LIFT_INI_RAD; \
	\
	pars.yaw.min_counts = MIRO_YAW_MIN_COUNTS; \
	pars.yaw.max_counts = MIRO_YAW_MAX_COUNTS; \
	pars.yaw.calib_counts = MIRO_YAW_CALIB_COUNTS; \
	pars.yaw.speed_counts = MIRO_YAW_SPEED_COUNTS; \
	pars.yaw.counts_at_zero_rad = MIRO_YAW_COUNTS_AT_ZERO_RAD; \
	pars.yaw.counts_per_rad = MIRO_YAW_COUNTS_PER_RAD; \
	pars.yaw.min_rad = MIRO_YAW_MIN_RAD; \
	pars.yaw.max_rad = MIRO_YAW_MAX_RAD; \
	pars.yaw.ini_rad = MIRO_YAW_INI_RAD; \
	\
	pars.pitch.min_counts = MIRO_PITCH_MIN_COUNTS; \
	pars.pitch.max_counts = MIRO_PITCH_MAX_COUNTS; \
	pars.pitch.calib_counts = MIRO_PITCH_CALIB_COUNTS; \
	pars.pitch.speed_counts = MIRO_PITCH_SPEED_COUNTS; \
	pars.pitch.counts_at_zero_rad = MIRO_PITCH_COUNTS_AT_ZERO_RAD; \
	pars.pitch.counts_per_rad = MIRO_PITCH_COUNTS_PER_RAD; \
	pars.pitch.min_rad = MIRO_PITCH_MIN_RAD; \
	pars.pitch.max_rad = MIRO_PITCH_MAX_RAD; \
	pars.pitch.ini_rad = MIRO_PITCH_INI_RAD; \
	\
	pars.eyelids.min_counts = MIRO_EYELIDS_MIN_COUNTS; \
	pars.eyelids.max_counts = MIRO_EYELIDS_MAX_COUNTS; \
	pars.eyelids.calib_counts = MIRO_EYELIDS_CALIB_COUNTS; \
	pars.eyelids.speed_counts = MIRO_EYELIDS_SPEED_COUNTS; \
	\
	pars.droop.min_counts = MIRO_DROOP_MIN_COUNTS; \
	pars.droop.max_counts = MIRO_DROOP_MAX_COUNTS; \
	pars.droop.calib_counts = MIRO_DROOP_CALIB_COUNTS; \
	pars.droop.speed_counts = MIRO_DROOP_SPEED_COUNTS; \
	\
	pars.wag.min_speed_counts = MIRO_WAG_MIN_SPEED_COUNTS; \
	pars.wag.max_speed_counts = MIRO_WAG_MAX_SPEED_COUNTS; \
	pars.wag.zero_pos_counts = MIRO_WAG_ZERO_POS_COUNTS; \
	pars.wag.grace_pos_counts = MIRO_WAG_GRACE_POS_COUNTS; \
	\
	pars.rotate.min_counts = MIRO_ROTATE_MIN_COUNTS; \
	pars.rotate.max_counts = MIRO_ROTATE_MAX_COUNTS; \
	pars.rotate.calib_counts = MIRO_ROTATE_CALIB_COUNTS; \
	pars.rotate.speed_counts = MIRO_ROTATE_SPEED_COUNTS; \
	\
	pars.curl.min_counts = MIRO_CURL_MIN_COUNTS; \
	pars.curl.max_counts = MIRO_CURL_MAX_COUNTS; \
	pars.curl.calib_counts = MIRO_CURL_CALIB_COUNTS; \
	pars.curl.speed_counts = MIRO_CURL_SPEED_COUNTS; \
} while(0)

#define MIRO_P2_PLATFORM_PARS_SIZE ( 0 \
			+ 4 * MIRO_P2_KINEMATIC_SERVO_PARS_SIZE \
			+ 4 * MIRO_P2_COSMETIC_SERVO_PARS_SIZE \
			+ MIRO_P2_COSMETIC_VELSERVO_PARS_SIZE \
			+ MIRO_P2_DIM_PARS_SIZE \
			+ MIRO_P2_DOF_COMMON_PARS_SIZE \
			)

struct MIRO_P2_SENSOR_PARS
{
	uint8_t stroke_detection_gap;
	uint8_t __align1[3];
	float user_touch_timeout;
};

#define __MIRO_P2_SENSOR_PARS_DEFAULT(pars) \
do { \
	pars.stroke_detection_gap = 20; \
	pars.user_touch_timeout = 1.0f; \
} while(0)

#define MIRO_P2_SENSOR_PARS_SIZE 8

struct MIRO_P2_CAMERA_PARS
{
	//	camera model (elev/div are per-camera, in case we one day want
	//	to set the calibration separately for each based on recordings)
	float elevation[2];
	float azimuth[2];
	float roll[2]; // NB: not yet implemented
	float hori_half_fov;
	float pixel_aspect_ratio;
	float distortion_model_k1;
	float distortion_model_k2;
};

#define __MIRO_P2_CAMERA_PARS_DEFAULT(pars) \
do { \
	pars.elevation[0] = MIRO_CAM_ELEVATION; \
	pars.elevation[1] = MIRO_CAM_ELEVATION; \
	pars.azimuth[0] = MIRO_CAM_DIVERGENCE; \
	pars.azimuth[1] = -MIRO_CAM_DIVERGENCE; \
	pars.roll[0] = 0.0f; \
	pars.roll[1] = 0.0f; \
	pars.hori_half_fov = MIRO_CAM_HORI_HALF_FOV; \
	pars.pixel_aspect_ratio = MIRO_CAM_PIXEL_ASPECT_RATIO; \
	pars.distortion_model_k1 = MIRO_CAM_DISTORTION_MODEL_K1; \
	pars.distortion_model_k2 = MIRO_CAM_DISTORTION_MODEL_K2; \
} while(0)

#define MIRO_P2_CAMERA_PARS_SIZE 40

#define MIRO_P2_RTC_ZERO_SKEW				__BIT(0)
#define MIRO_P2_RTC_FLAGS_DEFAULT			(0)

struct MIRO_P2_RTC_PARS
{
	uint32_t flags;
	int32_t skew_gain;
	int32_t skew_max;
};

#define __MIRO_P2_RTC_PARS_DEFAULT(pars) \
do { \
	pars.flags = MIRO_P2_RTC_FLAGS_DEFAULT; \
	pars.skew_gain = 524288; \
	pars.skew_max = (1 << 28); \
} while(0)

#define MIRO_P2_RTC_PARS_SIZE 12

struct MIRO_P2_AFFECT_PARS
{
	//	extrinsic
	float valence_stroke_gain;
	float valence_pet_gain;
	float valence_audio_level_min;
	float valence_audio_level_max;
	float tau_audio_level_accum;
	float valence_audio_gain;
	float valence_acch_thresh;
	float valence_acch_slope;
	float valence_acch_gain;
	float valence_orient_fixation_gain;
	float valence_sleep_blocked_thresh;
	float valence_sleep_blocked_gain;
	float arousal_stroke_thresh;
	float arousal_stroke_gain;
	float arousal_pet_gain;
	float arousal_audio_level_min;
	float arousal_audio_level_max;
	float arousal_audio_gain;
	float arousal_light_sum_offset;
	float arousal_light_sum_gain;

	//	dynamics
	float arousal_nominal;
	float arousal_gain_rtc;
	float arousal_target_emotion_weighting;
	float tau_neutral_valence_asleep;
	float tau_neutral_valence_awake;
	float tau_mood;
	float tau_emotion;
	float sleep_dyn_p;
	float sleep_dyn_q;
	float sleep_dyn_a;
	float sleep_dyn_b;
	float sleep_dyn_c;

	//	expression (eyelids)
	float eyelids_droop_on_touch;
	int16_t blink_mean_interval;				//	unit: hi samples
	int16_t blink_refractory_period;			//	unit: hi samples
	int16_t blink_max_time;						//	unit: hi samples
	int16_t double_blink_max_time;				//	unit: hi samples
	float double_blink_prob;
	float blink_arousal_gain;
};

#define __MIRO_P2_AFFECT_PARS_DEFAULT(pars) \
do { \
	pars.valence_stroke_gain = 0.1f; \
	pars.valence_pet_gain = 0.025f; \
	pars.valence_audio_level_min = 1.5f; \
	pars.valence_audio_level_max = 3.0f; \
	pars.tau_audio_level_accum = 1.0f; \
	pars.valence_audio_gain = -0.05f; \
	pars.valence_acch_thresh = 1.0f; \
	pars.valence_acch_slope = 0.5f; \
	pars.valence_acch_gain = -0.1f; \
	pars.valence_orient_fixation_gain = 0.1f; \
	pars.valence_sleep_blocked_thresh = 0.5f; \
	pars.valence_sleep_blocked_gain = -0.001f; \
	pars.arousal_stroke_thresh = 0.75f; \
	pars.arousal_stroke_gain = 0.1f; \
	pars.arousal_pet_gain = 0.025f; \
	pars.arousal_audio_level_min = 0.1f; \
	pars.arousal_audio_level_max = 1.0f; \
	pars.arousal_audio_gain = 0.025f; \
	pars.arousal_light_sum_offset = 0.2f; \
	pars.arousal_light_sum_gain = 0.1f; \
	pars.arousal_nominal = 0.5f; \
	pars.arousal_gain_rtc = 0.125f; \
	pars.arousal_target_emotion_weighting = 2.0f; \
	pars.tau_neutral_valence_asleep = 120.0f; \
	pars.tau_neutral_valence_awake = 600.0f; \
	pars.tau_mood = 4.0f; \
	pars.tau_emotion = 4.0f; \
	pars.eyelids_droop_on_touch = 0.5f; \
	pars.blink_mean_interval = 100; \
	pars.blink_refractory_period = 25; \
	pars.blink_max_time = 24; \
	pars.double_blink_max_time = 36; \
	pars.double_blink_prob = 0.1f; \
	pars.blink_arousal_gain = 0.5f; \
	pars.sleep_dyn_p = (1.0f * 0.0002f); \
	pars.sleep_dyn_q = (-1.0f * 0.0002f); \
	pars.sleep_dyn_a = (-1.0f * 0.002f); \
	pars.sleep_dyn_b = (2.0f * 0.002f); \
	pars.sleep_dyn_c = (-8.0f * 0.002f); \
} while(0)

#define MIRO_P2_AFFECT_PARS_SIZE 148

struct MIRO_P2_ACTION_PARS
{
	//	action *
	float fixation_region_width;			//	Rad
	float range_estimate_min;
	float range_estimate_max;
	float size_large;
	uint8_t cliff_min;
	uint8_t cliff_max;
	int16_t __align;
	
	//	action halt
	int16_t halt_num_steps;
	int16_t halt_effort_filt_length;
	int16_t halt_yaw_effort_thresh;
	int16_t __align2;

	//	action orient
	float orient_speed_sec_per_rad;
	int16_t orient_min_steps;
	int16_t orient_max_steps;

	//	action approach
	float approach_speed_sec_per_mm;
	int16_t approach_min_steps;
	int16_t approach_max_steps;

	//	action flee
	float flee_speed_sec_per_mm;
	int16_t flee_min_steps;
	int16_t flee_max_steps;
	
	//	action retreat
	float retreat_distance_mm;
	float retreat_speed_mm_per_sec;
	float retreat_rand_gain;
	
	//	spatial actions (see dev/action_priority)
	float base_prio_orie;
	float base_prio_appr;
	float base_prio_flee;
	float size_gain;
	float arousal_gain;
	float fixation_gain;
};

#define __MIRO_P2_ACTION_PARS_DEFAULT(pars) \
do { \
	pars.fixation_region_width = 0.5f; \
	pars.range_estimate_min = 100.0f; \
	pars.range_estimate_max = 1500.0f; \
	pars.size_large = 0.025f; \
	pars.halt_num_steps = 100; \
	pars.halt_effort_filt_length = 10; \
	pars.halt_yaw_effort_thresh = 32; \
	pars.orient_speed_sec_per_rad = 1.0f; \
	pars.orient_min_steps = 25; \
	pars.orient_max_steps = 75; \
	pars.approach_speed_sec_per_mm = (1.0f / 300.0f); \
	pars.approach_min_steps = 50; \
	pars.approach_max_steps = 300; \
	pars.flee_speed_sec_per_mm = (1.0f / 500.0f); \
	pars.flee_min_steps = 50; \
	pars.flee_max_steps = 300; \
	pars.retreat_distance_mm = 600.0f; \
	pars.retreat_speed_mm_per_sec = 200.0f; \
	pars.retreat_rand_gain = 0.3f; \
	pars.base_prio_orie = 0.5f; \
	pars.base_prio_appr = 0.75f; \
	pars.base_prio_flee = 0.75f; \
	pars.size_gain = 0.5f; \
	pars.arousal_gain = 1.0f; \
	pars.fixation_gain = 1.0f; \
	pars.cliff_min = 0; \
	pars.cliff_max = 4; \
} while(0)

#define MIRO_P2_ACTION_PARS_SIZE 88

struct MIRO_PARK2011_PARS
{
	float k1;
	float k2;
	float kv;
	float ka;
	float v_min;
	float v_max;
	float a_max;
	float close_theta;
	float close_range;
	float t_max;
};

#define MIRO_PARK2011_PARS_SIZE 40

#define __MIRO_PARK2011_PARS_DEFAULT(pars) \
do { \
	pars.k1 = 1.0f; \
	pars.k2 = 5.0f; \
	pars.kv = 1.0f; \
	pars.ka = 0.5f; \
	pars.v_min = 50.0f; \
	pars.v_max = 350.0f; \
	pars.a_max = 200.0f; \
	pars.close_theta = 0.1f; \
	pars.close_range = 10.0f; \
	pars.t_max = 10.0f; \
} while(0)

struct MIRO_P2_BODY_PARS
{
	float body_pose_filt_gain_dr;
	float body_pose_filt_gain_dtheta;
	float wheels_sleep_suppress_gain;
	float lift_sleep_droop_gain;
	uint8_t body_pose_filt_L;
	uint8_t sonar_min_range;			//	units of 5mm
	uint8_t sonar_max_range;			//	units of 5mm

uint8_t align[1];

	float max_accel_mmpsps;
	float max_decel_mmpsps;

	struct MIRO_PARK2011_PARS park2011;
};

#define __MIRO_P2_BODY_PARS_DEFAULT(pars) \
do { \
	pars.body_pose_filt_gain_dr = 0.8f; \
	pars.body_pose_filt_gain_dtheta = 0.8f; \
	pars.wheels_sleep_suppress_gain = 1.0f; \
	pars.lift_sleep_droop_gain = 1.0f; \
	pars.body_pose_filt_L = 10; \
	pars.sonar_min_range = 10; \
	pars.sonar_max_range = 60; \
	pars.max_accel_mmpsps = 1600.0f; \
	pars.max_decel_mmpsps = 800.0f; \
	__MIRO_PARK2011_PARS_DEFAULT(pars.park2011); \
} while(0)

#define MIRO_P2_BODY_PARS_SIZE (28 + MIRO_PARK2011_PARS_SIZE)

struct MIRO_P2_SELECTION_PARS
{
	float noise_mag;
	float global_hysteresis;
	float priority_idle;
	float priority_low;
	float priority_medium;
	float priority_high;
	float priority_uninterruptable;
};

#define __MIRO_P2_SELECTION_PARS_DEFAULT(pars) \
do { \
	pars.noise_mag = 0.01f; \
	pars.global_hysteresis = 0.05f; \
	pars.priority_idle = 0.1f; \
	pars.priority_low = 0.25f; \
	pars.priority_medium = 0.5f; \
	pars.priority_high = 0.75f; \
	pars.priority_uninterruptable = 1.0f; \
} while(0)

#define MIRO_P2_SELECTION_PARS_SIZE 28

//	spatial flags
#define MIRO_P2_FRMPROC_UNWEIGHTED_LUM			__BIT(0)
#define MIRO_P2_FRMPROC_ITTI_RGBY_FILTERS		__BIT(1)

struct MIRO_P2_SPATIAL_PARS
{
	uint32_t flags;

	/*
		Mics (ears).
	*/
	float audio_event_level_gain;
	float audio_event_assumed_range;
	float audio_event_assumed_height;

	/*
		Cameras (eyes).
	*/
	float gaze_elevation_min;
	float gaze_elevation_max;

	/*
		Sensors compromised model.
	*/
	float moving_afferent_filter_gain;
	float moving_afferent_filter_thresh;

	//	time (usec) for physical movement to stop after last change in
	//	configuration (DOF + wheels) as indicated by sensory afferents.
	//	that is, how long does MIRO wobble after the motors stop moving.
	int32_t t_mov_settle;

	//	time (usec) after a blink during which the automatic exposure
	//	may be settling, so vision is compromised
	int32_t t_aec_settle;

	//	time (usec) after a noise being made in which the mics system
	//	may still be reporting some part of that noise signal
	int32_t t_aud_history;

	/*
		Priority maps.
	*/
	float audio_event_width_rad;
	float audio_event_height_rad;
	float pri_peak_height_thresh;
	uint8_t pri_filt_width;
	uint8_t degrees_hindsight; // up to 90, for wraparound representation in stream[2]

	uint8_t __align[2];
};

#define __MIRO_P2_SPATIAL_PARS_DEFAULT(pars) \
do { \
	pars.flags = 0; \
	pars.audio_event_level_gain = 10.0f; \
	pars.audio_event_assumed_range = 2000.0f; \
	pars.audio_event_assumed_height = 600.0f; \
	pars.gaze_elevation_min = MIRO_CAM_GAZE_ELEVATION_MIN; \
	pars.gaze_elevation_max = MIRO_CAM_GAZE_ELEVATION_MAX; \
	pars.moving_afferent_filter_gain = 0.9f; \
	pars.moving_afferent_filter_thresh = 1.0f; \
	pars.t_mov_settle = (100 * 1000); \
	pars.t_aec_settle = (1000 * 1000); \
	pars.t_aud_history = (50 * 1000); \
	pars.audio_event_width_rad = 0.1f; \
	pars.audio_event_height_rad = 0.3f; \
	pars.pri_peak_height_thresh = 0.75f; \
	pars.pri_filt_width = 2; \
	pars.degrees_hindsight = 30; \
} while(0)

#define MIRO_P2_SPATIAL_PARS_SIZE 60

#define MIRO_P2_LOWER_EYELIDS_ADAPT			__BIT(0)
#define MIRO_P2_LOWER_DISABLE_LIFT			__BIT(1)
#define MIRO_P2_LOWER_DISABLE_YAW			__BIT(2)
#define MIRO_P2_LOWER_DISABLE_PITCH			__BIT(3)
#define MIRO_P2_LOWER_DISABLE_EARS			__BIT(4)
#define MIRO_P2_LOWER_DISABLE_EYELIDS		__BIT(5)
#define MIRO_P2_LOWER_FLAGS_DEFAULT			(MIRO_P2_LOWER_EYELIDS_ADAPT)

struct MIRO_P2_LOWER_PARS
{
	uint32_t flags;
	float eyelids_not_fully_open;
};

#define __MIRO_P2_LOWER_PARS_DEFAULT(pars) \
do { \
	pars.flags = MIRO_P2_LOWER_FLAGS_DEFAULT; \
	pars.eyelids_not_fully_open = 0.2f; \
} while(0)

#define MIRO_P2_LOWER_PARS_SIZE 8

#define MIRO_P2_IMP_SHOW_WARNINGS			__BIT(0)
#define MIRO_P2_IMP_FLAGS_DEFAULT			(0)

struct MIRO_P2_MODEL_PARS_IMP
{
	uint32_t flags;
	uint8_t sync_reuse_limit;
	uint8_t __align[3];
};

#define MIRO_P2_MODEL_PARS_IMP_SIZE 8

#define __MIRO_P2_MODEL_PARS_IMP_DEFAULT(pars) \
do { \
	pars.flags = MIRO_P2_IMP_FLAGS_DEFAULT; \
	pars.sync_reuse_limit = 50; \
} while(0)

#define MIRO_P2_MODEL_PARS_UPDATE			__BIT(0)
#define MIRO_P2_MODEL_PARS_PERSIST			__BIT(1)
#define MIRO_P2_MODEL_PARS_CLEAR			__BIT(2)

struct MIRO_P2_MODEL_PARS
{
	uint32_t flags;
	struct MIRO_P2_MODEL_PARS_IMP imp;
	struct MIRO_P1_PLATFORM_PARS platform_P1;
	struct MIRO_P2_PLATFORM_PARS platform_P2;
	struct MIRO_P2_SENSOR_PARS sensor;
	struct MIRO_P2_CAMERA_PARS camera;
	struct MIRO_P2_RTC_PARS rtc;
	struct MIRO_P2_AFFECT_PARS affect;
	struct MIRO_P2_ACTION_PARS action;
	struct MIRO_P2_BODY_PARS body;
	struct MIRO_P2_SELECTION_PARS selection;
	struct MIRO_P2_SPATIAL_PARS spatial;
	struct MIRO_P2_LOWER_PARS lower;
};

#define __MIRO_P2_MODEL_PARS_DEFAULT(pars) \
do { \
	pars.flags = 0; \
	__MIRO_P2_MODEL_PARS_IMP_DEFAULT(pars.imp); \
	__MIRO_P1_PLATFORM_PARS_DEFAULT(pars.platform_P1); \
	__MIRO_P2_PLATFORM_PARS_DEFAULT(pars.platform_P2); \
	__MIRO_P2_SENSOR_PARS_DEFAULT(pars.sensor); \
	__MIRO_P2_CAMERA_PARS_DEFAULT(pars.camera); \
	__MIRO_P2_RTC_PARS_DEFAULT(pars.rtc); \
	__MIRO_P2_AFFECT_PARS_DEFAULT(pars.affect); \
	__MIRO_P2_ACTION_PARS_DEFAULT(pars.action); \
	__MIRO_P2_BODY_PARS_DEFAULT(pars.body); \
	__MIRO_P2_SELECTION_PARS_DEFAULT(pars.selection); \
	__MIRO_P2_SPATIAL_PARS_DEFAULT(pars.spatial); \
	__MIRO_P2_LOWER_PARS_DEFAULT(pars.lower); \
} while(0)

#define MIRO_P2_MODEL_PARS_SIZE ( \
	4 + \
	MIRO_P2_MODEL_PARS_IMP_SIZE + \
	MIRO_P1_PLATFORM_PARS_SIZE + \
	MIRO_P2_PLATFORM_PARS_SIZE + \
	MIRO_P2_SENSOR_PARS_SIZE + \
	MIRO_P2_CAMERA_PARS_SIZE + \
	MIRO_P2_RTC_PARS_SIZE + \
	MIRO_P2_AFFECT_PARS_SIZE + \
	MIRO_P2_ACTION_PARS_SIZE + \
	MIRO_P2_BODY_PARS_SIZE + \
	MIRO_P2_SELECTION_PARS_SIZE + \
	MIRO_P2_SPATIAL_PARS_SIZE + \
	MIRO_P2_LOWER_PARS_SIZE \
	)

__PREPROC_ASSERT_SIZE(MIRO_P2_MODEL_PARS);



#endif // INC_MIRO_P2_MODEL_PARS_H



