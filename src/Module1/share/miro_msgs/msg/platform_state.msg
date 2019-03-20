
# direction: upstream
# source: robot platform
# description: state data



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags

# additional header
int32 time_usec			# time in usec with rollover at 1<<29



#### P1

# firmware release
uint16 P1_release

# mode
uint8 P1_mode

# error
uint8 P1_error_code

# signals
uint32 P1_R_signals

# success
uint32 success_r
uint32 success_w

# rng
uint32 seed



#### P2

# firmware release
uint16 P2_release

# firmware release
uint16 P2_bootloader_release

# serial number
uint32 serial_number

# mode
uint8 P2_mode

# signals
uint32 P2C_R_signals
uint32 P2L_R_signals
uint32 P2U_R_signals

# streaming buffer state
uint8 num_free_stream_buf
uint16 msg_id_of_last_stream_buf_recv

# real time clock
int8 rtc_hrs
int8 rtc_min
int8 rtc_sec
int8 rtc_skew



#### P3

# firmware release
uint16 P3_release



#### bridge

int16 number_of_loaded_sounds




