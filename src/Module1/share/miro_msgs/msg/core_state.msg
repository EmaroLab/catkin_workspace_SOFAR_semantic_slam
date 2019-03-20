
# direction: upstream
# source: biomimetic core
# description: state data



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags

# additional header
int32 time_usec			# time in usec with rollover at 1<<29



#### AFFECT

miro_msgs/affect emotion
miro_msgs/affect mood
miro_msgs/sleep sleep



#### ACTION

# priority of each action sub-system in P2
float32[8] priority



#### SPATIAL

miro_msgs/priority_peak[3] priority_peak
miro_msgs/audio_event audio_event



#### BRANCH

# output of action selection system
float32[8] selection
float32[8] disinhibition



