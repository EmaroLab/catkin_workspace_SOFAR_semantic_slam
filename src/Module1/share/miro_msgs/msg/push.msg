#	The identifier of the pushed link
int32 link

#	Flags (see miro_constants/miro.py)
#
#	MIRO_BODY_PUSH_IMPULSE
#		Treat push as an impulse (in mm).
#
#	MIRO_BODY_PUSH_VELOCITY
#		Treat push as a velocity (in mm/sec).
#
#	NB: If neither of the above flags is set, the push should
#	not be actioned at all (this condition is used in server
#	to indicate "not pending").
#
#	MIRO_BODY_PUSH_ZERO_POSE_DR
#		Zero out any resultant change in pose.dr.
uint32 flags

#	The pushed point, in the reference frame of the pushed link
geometry_msgs/Point pushpos

#	The push vector, in the reference frame of the pushed link
geometry_msgs/Vector3 pushvec




