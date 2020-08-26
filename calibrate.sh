source devel/setup.bash


#rosrun image_transport republish compressed in:=/camera/image raw out:=/camera/image_raw &
roslaunch ip_camera ip_camera.launch &
rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.35 image:=/camera/image_raw camera:=/camera --no-service-check &
