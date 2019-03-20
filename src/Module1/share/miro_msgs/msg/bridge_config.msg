
# direction: downstream
# destination: robot-to-network bridge
# description: configuration data



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags



####	BRIDGE FLAGS

#	Flags (defined in miro_constants/miro.py)
#
#	MIRO_BRIDGE_UPDATE
#		If set, flags from this message are updated into bridge
#
#	MIRO_BRIDGE_NO_PUBLISH_MICS
#		Bridge will not publish microphone stream
#
#	MIRO_BRIDGE_NO_PUBLISH_CAMS
#		Bridge will not publish camera streams
uint32 flags




