
# direction: downstream
# destination: robot platform
# description: configuration data



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags



#### GENERAL

# reset (set to non-zero to reset P2)
uint32 reset



#### CAMERAS

# camera parameters
uint32 frame_size # 128, 192 or 320
float32 frame_rate # frame rate in Hz




