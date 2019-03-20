
# direction: downstream
# destination: robot platform
# description: control signals



# the robot can be driven in different ways. all of these
# signal streams are active in parallel. to use only a
# subset of these streams, leave the remainder in a "no
# effect" state (see below for each stream).



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags

# set as many of these as required to force synchronisation
# between those streams (you must set identical flags on
# each stream)
uint32 FLAG_SYNC_PLATFORM=1
uint32 FLAG_SYNC_CORE=2



#### DRIVE BODY DIRECT

# direct drive of wheels
# all elements zero has no effect on body
geometry_msgs/Twist body_vel

# direct drive of kinematic chain (Rad, Rad/sec)
# body_config_speed == 0 causes no changes
# body_config_speed == -1 means infinite speed (move aqap)
# first (of four) DOF is not implemented on current robots
float32[4] body_config
float32[4] body_config_speed



#### DRIVE BODY THROUGH MOTION CONTROLLER

#	Flags (see miro_constants/miro.py)
#
#	MIRO_BODY_MOVE_START
#		Raise this flag to start a move to the 2D pose
#		specified in "body_move", relative to the current
#		pose. The move will be planned using Park's &
#		Kuipers's 2011 (ICRA) algorithm.
#
#	MIRO_BODY_MOVE_CONTINUE
#		Raise this flag to continue a move that has already
#		been started.
#
#		NB: BODY_MOVE_CONTINUE must be raised in the same
#		frame that BODY_MOVE_START is raised; thus, the
#		flags will be set as:
#
#		START		1 0 0 0 0 0 0 0 ...
#		CONTINUE	1 1 1 1 1 1 1 1 ...
#
#	If no flags are set, body_move has no effect
uint32 body_move_flags

# desired change in body pose
geometry_msgs/Pose2D body_move



#### DRIVE COSMETIC DOFs DIRECT

# cosmetic kinematics
float32 tail # -1 (droop) through zero to +1 (wag)
float32[2] ear_rotate # 0 to 1
float32 eyelid_closure # 0 to 1
int16 blink_time # pulse +ve to start a blink (-ve == double blink)

# lights: drive the LED displays through a simple filter
uint8 lights_max_drive # maximum drive level when lights are at full amplitude (0-255); 127 is a sensible value
uint8 lights_dphase # delta phase between adjacent LEDs (0-255)
uint8 lights_phase # lighting phase (0-255)
uint8 lights_amp # amplitude of lighting pattern (0-255)
int8 lights_off # arithmetic offset of lighting pattern (-128 to 127)

# NB: here, and below, we use a uint16 container because
# the access syntax is more convenient from python (uint8
# arrays are implemented as strings by rospy)
uint16[3] lights_rgb # lighting color (0 to 255)

# low-level lights: drive 18 color channels directly;
# organisation is by color channel (r, g, b) first, then
# by led (front, middle, back), and by side (left, right),
# so that lights_raw[0] is red, front, left and
# lights_raw[1] is green, front, left.
uint16[18] lights_raw # lighting color channel (0 to 255)

# sounds
uint16 sound_index_P1 # pulse +ve to start playing a sound stored in P1 library
uint16 sound_index_P2 # pulse +ve to start playing a sound stored in P2 library




