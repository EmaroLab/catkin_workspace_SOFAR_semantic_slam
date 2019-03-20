
# direction: upstream
# source: robot platform
# description: latest samples from the stereo microphones



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags



#### MICROPHONES

# mics header
int32 t_complete
uint32 fS
uint32 sample_number # of first sample in block

# data (two channels interleaved)
# data are int10 in an int16 container
int16[4000] data




