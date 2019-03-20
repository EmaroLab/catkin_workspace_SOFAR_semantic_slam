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

	This header provides constants defined on the platform interface.
*/

#ifndef INC_MIRO_CONSTANTS_H
#define INC_MIRO_CONSTANTS_H



//	arithmetic
#define MIRO_PI										3.14159265f

//	body move flags
#define MIRO_BODY_MOVE_START						__BIT(0)
#define MIRO_BODY_MOVE_CONTINUE						__BIT(1)
#define MIRO_BODY_MOVE_ABSOLUTE						__BIT(2)

//	P2U_W constants
#define MIRO_P2U_W_LEAN_SPEED_INF					-1.0f

//	special values for DOF
#define MIRO_DOF_USE_INI							42.0f
#define MIRO_DOF_GO_INACTIVE						43.0f

//	time
#define MIRO_TIME_BITS								29
#define MIRO_TIME_ROLLOVER							((int32_t)(1 << MIRO_TIME_BITS))
#define MIRO_TIME_ROLLOVER_HALF						((int32_t)(MIRO_TIME_ROLLOVER >> 1))

/**	Each DOF in the kinematic chain (tilt, lift, pitch, yaw)
	lies between two links (frames of reference). The links need
	unique names. We could call them after the preceding DOF, but
	this doesn't work for WORLD or BODY, and in any case we're
	used to using HEAD for most distal. So we've ended up with
	this scheme:

	[LINK]		[DOF]		[NOTES]
	WORLD					arbitrary horizontal frame based on MIRO's location at reset
				pose		actually 3 DOFs, a rotation and a translation
	FOOT					footprint of robot, horizontal frame
				tilt		fixed angle in current robots
	BODY					chassis, includes body shell (NB that body is tilted wrt the horizontal floor)
				lift		main neck movement
	NECK					main neck member
				yaw			left-to-right head movement
	GIMBAL					just a bearing and a support piece
				pitch		up-down movement of the head without moving the neck member
	HEAD					head, includes head shell
*/

//	link identifiers
#define MIRO_LINK_WORLD					-1
#define MIRO_LINK_FOOT					0
#define MIRO_LINK_BODY					1
#define MIRO_LINK_NECK					2
#define MIRO_LINK_GIMBAL				3
#define MIRO_LINK_HEAD					4
#define MIRO_LINK_COUNT					5

//	joint identifiers
#define MIRO_JOINT_TILT					0
#define MIRO_JOINT_LIFT					1
#define MIRO_JOINT_YAW					2
#define MIRO_JOINT_PITCH				3
#define MIRO_JOINT_COUNT				4

//	action identifiers
#define MIRO_P2_ACTION_MULL				0
#define MIRO_P2_ACTION_HALT				1
#define MIRO_P2_ACTION_ORIENT			2
#define MIRO_P2_ACTION_APPROACH			3
#define MIRO_P2_ACTION_FLEE				4
#define MIRO_P2_ACTION_RETREAT			5
#define MIRO_P2_ACTION_NUM_IMP			6
#define MIRO_P2_ACTION_NUM_MAX			8 // allows adding more in P2 with minimal disruption
#define MIRO_P2_ACTION_NONE				0xFFFFFFFF

//	body push types
#define MIRO_BODY_PUSH_IMPULSE						__BIT(0)
#define MIRO_BODY_PUSH_VELOCITY						__BIT(1)
#define MIRO_BODY_PUSH_ZERO_POSE_DR					__BIT(2)

//	P1_R.signals
#define MIRO_P1_R_CALIBRATING_SHAFT_ENC				0
#define MIRO_P1_R_UC1_STARTUP_PERIOD				1
#define MIRO_P1_R_DESTALL_ACTIVE					2
#define MIRO_P1_R_LOW_BATT							3
#define MIRO_P1_R_RAN_VIRTMACH						4
#define MIRO_P1_R_I2C_RESET_ON_BUSY					5
#define MIRO_P1_R_I2C_DISABLE						6
#define MIRO_P1_R_I2C_ENABLE						7
#define MIRO_P1_R_LOW_POWER_ENTER					8
#define MIRO_P1_R_LOW_POWER_LEAVE					9
#define MIRO_P1_R_STALL_DETECTED_UC1				10
#define MIRO_P1_R_STALL_DETECTED_UC4				11
#define MIRO_P1_R_DESTALL_ON_UC1					12
#define MIRO_P1_R_DESTALL_ON_UC4					13
#define MIRO_P1_R_DESTALL_ON_TRIGGER				14
#define MIRO_P1_R_DESTALL_COMPLETE					15
#define MIRO_P1_R_RETREAT_ON_STALL					16
#define MIRO_P1_R_RETREAT_ON_CLIFF					17
#define MIRO_P1_R_RETREAT_ON_TIMER					18
#define MIRO_P1_R_FREEZE							19
#define MIRO_P1_R_FREEZE_ON_TOUCH					20
#define MIRO_P1_R_FREEZE_ON_TILT					21
#define MIRO_P1_R_FREEZE_ON_LIGHT					22
#define MIRO_P1_R_OPERATION_ACTIONED				23
#define MIRO_P1_R_BASKING_MOBILE					24
#define MIRO_P1_R_BASKING_IMMOBILE					25
#define MIRO_P1_R_SHELL_RELEASE						26
#define MIRO_P1_R_RANDOM_WALK_CHANGE				27
#define MIRO_P1_R_ADPCM_RESET						28
#define MIRO_P1_R_SET_MODE_FROM_P2					29
#define MIRO_P1_R_SET_MODE_FROM_DIP					30

//	P2C_R.signals
#define MIRO_P2C_R_PLATFORM_READY					0
#define MIRO_P2C_R_P1_EVENT_COMPLETED				1
#define MIRO_P2C_R_P3_CONNECTED						2
#define MIRO_P2C_R_P3_SYNCED						3
#define MIRO_P2C_R_CONSERVATIVE						4
#define MIRO_P2C_R_STATEFUL_SIGNALS_MASK			0xFFFF
#define MIRO_P2C_R_ACK_SET_MODEL_PARS				16
#define MIRO_P2C_R_ACK_SET_RTC						17

//	P2C_R warnings (model)
#define MIRO_P2_WARN_R_SYNC_OVERFLOW				1
#define MIRO_P2_WARN_R_SYNC_STALL					2
#define MIRO_P2_WARN_AUDIO_EVENT_LOST				3
#define MIRO_P2_WARN_P2_W_OVERFLOW					4
#define MIRO_P2_WARN_P2_W_UNDERFLOW					5
#define MIRO_P2_WARN_P2_W_SIZE_MISMATCH				6
#define MIRO_P2_WARN_TAIL_IDLE_WATCHDOG				7
#define MIRO_P2_WARN_XSQ_NEGATIVE					8
#define MIRO_P2_WARN_STREAM_OVERFLOW				9
#define MIRO_P2_WARN_UNRECOG_MSG_FROM_P3			10
#define MIRO_P2_WARN_CLIFF_REFLEX_ACTIVE			11
#define MIRO_P2_WARN_REUSE_OVERFLOW					12
#define MIRO_P2_WARN_P1_NOT_CONNECTED				13

//	P2L_R.signals
#define MIRO_P2L_R_MODE_SET							0
#define MIRO_P2L_R_SEED_READY						1
#define MIRO_P2L_R_STATEFUL_SIGNALS_MASK			0xFFFF
#define MIRO_P2L_R_EYELIDS_ADAPTING					16
#define MIRO_P2L_R_REAFF_MOVING_EFF					20
#define MIRO_P2L_R_REAFF_MOVING_AFF					21
#define MIRO_P2L_R_REAFF_EYELIDS_NOT_FULLY_OPEN		22
#define MIRO_P2L_R_REAFF_EYELID_CLOSURE_CHANGED		23
#define MIRO_P2L_R_REAFF_VOCALISING					24

//	P2U_R.signals (stateful signals >= 16)
#define MIRO_P2U_R_STATEFUL_SIGNALS_MASK			0xFFFF
#define MIRO_P2U_R_BODY_MOVE_UNDERWAY				16
#define MIRO_P2U_R_VOCALISING						17
#define MIRO_P2U_R_ACK_BODY_RESET_INTEGRATORS		18

//	P2U_W.action.signals
#define MIRO_P2U_W_ACTION_ENABLE					0
#define MIRO_P2U_W_ACTION_DEBUG						1
#define MIRO_P2U_W_ACTION_FORCE_MULL				2
#define MIRO_P2U_W_ACTION_RANDOMIZE_ORIENT			3	//	randomize target before orienting
#define MIRO_P2U_W_ACTION_DISABLE_HALT				4
#define MIRO_P2U_W_ACTION_MODULATE_BY_SONAR			5
#define MIRO_P2U_W_ACTION_DISABLE_RETREAT			6
#define MIRO_P2U_W_ACTION_SHUN_CLIFFS				7
#define MIRO_P2U_W_ACTION_SHUN_CLIFFS_DEBUG			8
#define MIRO_P2U_W_ACTION_DISABLE_FLEE				9

//	P2U_W.body.signals
#define MIRO_P2U_W_BODY_ENABLE						0
#define MIRO_P2U_W_BODY_RESET_KC_INTEGRATORS		1
#define MIRO_P2U_W_BODY_NO_PUSH						8	//	ignore all link pushes
#define MIRO_P2U_W_BODY_NO_PUSH_MOTION				9	//	zero out any body pose change arising from pushes (intrinsic or extrinsic)
#define MIRO_P2U_W_BODY_NO_PUSH_TRANSLATION			10	//	zero out only body pose translations from pushes (allow rotation on the spot)
#define MIRO_P2U_W_BODY_NO_PUSH_INTO_SONAR			11	//	reduce forward pushes applied to HEAD if sonar range is small

//	P2U_W.affect.signals
#define MIRO_P2U_W_AFFECT_ENABLE					0
#define MIRO_P2U_W_AFFECT_ADJUST_RTC				1
#define MIRO_P2U_W_AFFECT_VALENCE_DYNAMICS			2
#define MIRO_P2U_W_AFFECT_AROUSAL_DYNAMICS			3
#define MIRO_P2U_W_AFFECT_NO_NEGATIVE_VALENCE		4
#define MIRO_P2U_W_AFFECT_ENABLE_SLEEP				8	//	otherwise force wakefulness to maximum
#define MIRO_P2U_W_AFFECT_FROM_CLOCK				12
#define MIRO_P2U_W_AFFECT_FROM_WAKEFULNESS			13
#define MIRO_P2U_W_AFFECT_FROM_LIGHT				14
#define MIRO_P2U_W_AFFECT_FROM_TOUCH				16
#define MIRO_P2U_W_AFFECT_FROM_SOUND				17
#define MIRO_P2U_W_AFFECT_FROM_ACCEL				18
#define MIRO_P2U_W_AFFECT_FROM_SLEEP_BLOCKED		19
#define MIRO_P2U_W_AFFECT_RANDOMIZE_VALENCE			24	//	randomize valence adjustment before applying
#define MIRO_P2U_W_AFFECT_FAST_SLEEP_DYNAMICS		25	//	speed up sleep dynamics (pedagogically useful)

//	P2U_W.express.signals
#define MIRO_P2U_W_EXPRESS_ENABLE					0
#define MIRO_P2U_W_EXPRESS_THROUGH_LIGHT			8
#define MIRO_P2U_W_EXPRESS_THROUGH_VOCAL			9
#define MIRO_P2U_W_EXPRESS_THROUGH_TAIL				10
#define MIRO_P2U_W_EXPRESS_THROUGH_EYELIDS			11
#define MIRO_P2U_W_EXPRESS_THROUGH_EARS				12
#define MIRO_P2U_W_EXPRESS_THROUGH_BODY				13
#define MIRO_P2U_W_EXPRESS_DEBUG_SONAR				14
#define MIRO_P2U_W_NO_EXPRESS_THROUGH_EYELIDS_WAKEFULNESS	16
#define MIRO_P2U_W_NO_EXPRESS_THROUGH_EYELIDS_BLINK			17
#define MIRO_P2U_W_NO_EXPRESS_THROUGH_EYELIDS_TOUCH			18
#define MIRO_P2U_W_EXPRESS_NO_PIRATE_NOISES			24	//	disable pirate noises
#define MIRO_P2U_W_EXPRESS_DO_PIRATE_NOISES			25	//	test pirate noises

//	P2L_W.signals
#define MIRO_P2L_W_NO_ASCENDING						0
#define MIRO_P2L_W_NO_DESCENDING					1
#define MIRO_P2L_W_NO_AUTOFLAG						2
//	NO_DRIVE_* means do not update the drive in P1_W, so that P3
//	can set it directly (P2 acts as a bridge for this signal).
//	ZERO_DRIVE_* means to explicitly zero out signal in P1_W.
#define MIRO_P2L_W_NO_DRIVE_BODY_VEL				4
#define MIRO_P2L_W_ZERO_DRIVE_BODY_VEL				5
#define MIRO_P2L_W_NO_DRIVE_EYELIDS					6
#define MIRO_P2L_W_ZERO_DRIVE_EYELIDS				7
#define MIRO_P2L_W_NO_DRIVE_EARS					8
#define MIRO_P2L_W_ZERO_DRIVE_EARS					9
#define MIRO_P2L_W_NO_DRIVE_TAIL					10
#define MIRO_P2L_W_ZERO_DRIVE_TAIL					11
#define MIRO_P2L_W_NO_DRIVE_LIGHTS					12
#define MIRO_P2L_W_ENABLE_POS_CONTROL				13	//	enable position controller in P1
#define MIRO_P2L_W_ENABLE_CLIFF_REFLEX				14	//	enable cliff reflex in P1
#define MIRO_P2L_W_FLIP_DRIVE_LEFT_EAR				15
#define MIRO_P2L_W_FLIP_DRIVE_RIGHT_EAR				16
#define MIRO_P2L_W_DESTALL_EARS_NOW					17
#define MIRO_P2L_W_CLEAR_STREAM_BUFS				20
#define MIRO_P2L_W_TRIGGER_RECORD_NAME				21
#define MIRO_P2L_W_DEBUG_STREAMING					24
#define MIRO_P2L_W_DEBUG_BUZZING					25
#define MIRO_P2L_W_DEBUG_COMPROMISE					26

//	P2B_W.signals
#define MIRO_P2B_W_BRANCH_ENABLE					0
#define MIRO_P2B_W_BRANCH_NO_SELECTION				1

//	P2S_W.signals
#define MIRO_P2S_W_SPATIAL_ENABLE					0
#define MIRO_P2S_W_SPATIAL_IGNORE_AUDIO				1
#define MIRO_P2S_W_SPATIAL_IGNORE_VIDEO				2
#define MIRO_P2S_W_SPATIAL_SEND_PRIORITY			3	//	send up spatial priority maps for inspection
#define MIRO_P2S_W_SPATIAL_SEND_OTHER				4
#define MIRO_P2S_W_SPATIAL_NO_REAFF_COMPROMISE		5
#define MIRO_P2S_W_SPATIAL_NO_SUPPRESS				6
#define MIRO_P2S_W_SPATIAL_SHOW_COMPROMISE			7
#define MIRO_P2S_W_SPATIAL_SHOW_TEST_PATTERN		8

//	P1_W.signals
#define MIRO_P1_W_NO_I2C							0 // do not drive I2C bus (allow P2 to control it directly through the VM)
#define MIRO_P1_W_NO_SYSTEM							1 // do not run system
#define MIRO_P1_W_NO_ASCENDING						2 // disable ascending branch
#define MIRO_P1_W_NO_LOOPS							3 // disable loop branch
#define MIRO_P1_W_NO_CONTROLLER						4 // disable all local controllers (in P2 mode, just position controller)
#define MIRO_P1_W_NO_DESCENDING						5 // disable descending branch
#define MIRO_P1_W_NO_POSCONT						6 // disable position controller (must do this to drive wheels directly, or controller will fight you!)
#define MIRO_P1_W_NO_BODY_SYNERGY					7 // disable body synergy generator
#define MIRO_P1_W_NO_ACCEL_LIMIT					8 // disable acceleration limiter
#define MIRO_P1_W_NO_CLIFF_REFLEX					9 // disable cliff reflex
#define MIRO_P1_W_NO_STALL_DETECT					10
#define MIRO_P1_W_NO_STALL_ON_UC4					11
#define MIRO_P1_W_NO_AUTO_DESTALL					12
#define MIRO_P1_W_TRIGGER_DESTALL					13 // trigger destall behaviour
#define MIRO_P1_W_NO_FREEZE_ON_ACCEL				14 // disable this driver of freeze response
#define MIRO_P1_W_NO_FREEZE_ON_TOUCH				15 // disable this driver of freeze response
#define MIRO_P1_W_FREEZE_ON_LIGHT					16 // enable this driver of freeze response
#define MIRO_P1_W_TRIGGER_FREEZE					17 // trigger freeze response
#define MIRO_P1_W_LED1_ON							18 // energise LED1
#define MIRO_P1_W_LED2_ON							19 // energise LED2
#define MIRO_P1_W_NO_RETREAT_ON_STALL				20
#define MIRO_P1_W_NO_RETREAT_ON_CLIFF				21
#define MIRO_P1_W_NO_RETREAT_ON_TIMER				22
#define MIRO_P1_W_NO_DPG							23
#define MIRO_P1_W_RESET_MODEL						24
#define MIRO_P1_W_RESET_POSCONT						25 // reset position feedback controller integrator
#define MIRO_P1_W_LOW_POWER_MODE					26
#define MIRO_P1_W_RESET_ADPCM						27
#define MIRO_P1_W_SEND_LOG							28
#define MIRO_P1_W_NO_I2C_BUSY_ALARM					29
#define MIRO_P1_W_SET_DEV_MODE						30
#define MIRO_P1_W_TEST_ALARM						31 // test I2C alarm, or LOWBAT alarm if also NO_I2C_BUSY_ALARM

//	bridge flags
#define MIRO_BRIDGE_UPDATE							__BIT(0)
#define MIRO_BRIDGE_NO_PUBLISH_MICS					__BIT(1)
#define MIRO_BRIDGE_NO_PUBLISH_CAMS					__BIT(2)



#endif // INC_MIRO_MACRO_H




