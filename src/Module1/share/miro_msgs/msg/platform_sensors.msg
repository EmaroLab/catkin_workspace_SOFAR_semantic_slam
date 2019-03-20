
# direction: upstream
# source: robot platform
# description: latest hi-rate (50Hz) sensor readings



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags

# additional header
int32 time_usec			# time in usec with rollover at 1<<29



#### INTEROCEPTIVE

# battery
#sensor_msgs/BatteryState battery_state
float32 battery_voltage

# temperature
sensor_msgs/Temperature temperature

# accelerometers
sensor_msgs/Imu accel_head
sensor_msgs/Imu accel_body

# odometry
nav_msgs/Odometry odometry

# joints
sensor_msgs/JointState joint_state
float32 eyelid_closure

# switches
uint8 dip_state_phys



#### EXTEROCEPTIVE

# sonar
sensor_msgs/Range sonar_range

# light
#sensor_msgs/Illuminance[4] illum
# we don't yet know the conversion to illuminance, so we
# use a different form for the raw information from sensors
# order is: front left, right, rear left, right
uint8[4] light

# touch
uint8[4] touch_head
uint8[4] touch_body

# cliff
uint8[2] cliff




