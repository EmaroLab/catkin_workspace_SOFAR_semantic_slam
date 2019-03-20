
# direction: downstream
# destination: robot-to-network bridge
# description: streaming audio data



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags



####	STREAMING

# +ve means "start indexed sound"; 0 means "no change"; -ve means "cancel any running sound"
int16 sound_index_P3




