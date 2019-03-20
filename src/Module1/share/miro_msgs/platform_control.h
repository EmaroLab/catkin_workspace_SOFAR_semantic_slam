// Generated by gencpp from file miro_msgs/platform_control.msg
// DO NOT EDIT!


#ifndef MIRO_MSGS_MESSAGE_PLATFORM_CONTROL_H
#define MIRO_MSGS_MESSAGE_PLATFORM_CONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose2D.h>

namespace miro_msgs
{
template <class ContainerAllocator>
struct platform_control_
{
  typedef platform_control_<ContainerAllocator> Type;

  platform_control_()
    : header()
    , msg_flags(0)
    , body_vel()
    , body_config()
    , body_config_speed()
    , body_move_flags(0)
    , body_move()
    , tail(0.0)
    , ear_rotate()
    , eyelid_closure(0.0)
    , blink_time(0)
    , lights_max_drive(0)
    , lights_dphase(0)
    , lights_phase(0)
    , lights_amp(0)
    , lights_off(0)
    , lights_rgb()
    , lights_raw()
    , sound_index_P1(0)
    , sound_index_P2(0)  {
      body_config.assign(0.0);

      body_config_speed.assign(0.0);

      ear_rotate.assign(0.0);

      lights_rgb.assign(0);

      lights_raw.assign(0);
  }
  platform_control_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , msg_flags(0)
    , body_vel(_alloc)
    , body_config()
    , body_config_speed()
    , body_move_flags(0)
    , body_move(_alloc)
    , tail(0.0)
    , ear_rotate()
    , eyelid_closure(0.0)
    , blink_time(0)
    , lights_max_drive(0)
    , lights_dphase(0)
    , lights_phase(0)
    , lights_amp(0)
    , lights_off(0)
    , lights_rgb()
    , lights_raw()
    , sound_index_P1(0)
    , sound_index_P2(0)  {
  (void)_alloc;
      body_config.assign(0.0);

      body_config_speed.assign(0.0);

      ear_rotate.assign(0.0);

      lights_rgb.assign(0);

      lights_raw.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _msg_flags_type;
  _msg_flags_type msg_flags;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _body_vel_type;
  _body_vel_type body_vel;

   typedef boost::array<float, 4>  _body_config_type;
  _body_config_type body_config;

   typedef boost::array<float, 4>  _body_config_speed_type;
  _body_config_speed_type body_config_speed;

   typedef uint32_t _body_move_flags_type;
  _body_move_flags_type body_move_flags;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _body_move_type;
  _body_move_type body_move;

   typedef float _tail_type;
  _tail_type tail;

   typedef boost::array<float, 2>  _ear_rotate_type;
  _ear_rotate_type ear_rotate;

   typedef float _eyelid_closure_type;
  _eyelid_closure_type eyelid_closure;

   typedef int16_t _blink_time_type;
  _blink_time_type blink_time;

   typedef uint8_t _lights_max_drive_type;
  _lights_max_drive_type lights_max_drive;

   typedef uint8_t _lights_dphase_type;
  _lights_dphase_type lights_dphase;

   typedef uint8_t _lights_phase_type;
  _lights_phase_type lights_phase;

   typedef uint8_t _lights_amp_type;
  _lights_amp_type lights_amp;

   typedef int8_t _lights_off_type;
  _lights_off_type lights_off;

   typedef boost::array<uint16_t, 3>  _lights_rgb_type;
  _lights_rgb_type lights_rgb;

   typedef boost::array<uint16_t, 18>  _lights_raw_type;
  _lights_raw_type lights_raw;

   typedef uint16_t _sound_index_P1_type;
  _sound_index_P1_type sound_index_P1;

   typedef uint16_t _sound_index_P2_type;
  _sound_index_P2_type sound_index_P2;


    enum { FLAG_SYNC_PLATFORM = 1u };
     enum { FLAG_SYNC_CORE = 2u };
 

  typedef boost::shared_ptr< ::miro_msgs::platform_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::miro_msgs::platform_control_<ContainerAllocator> const> ConstPtr;

}; // struct platform_control_

typedef ::miro_msgs::platform_control_<std::allocator<void> > platform_control;

typedef boost::shared_ptr< ::miro_msgs::platform_control > platform_controlPtr;
typedef boost::shared_ptr< ::miro_msgs::platform_control const> platform_controlConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::miro_msgs::platform_control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::miro_msgs::platform_control_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace miro_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/msg'], 'miro_msgs': ['/mnt/data/Dropbox/CqR/MIRO1/miro1/mdk/share/miro_msgs/msg'], 'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::miro_msgs::platform_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::miro_msgs::platform_control_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::miro_msgs::platform_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::miro_msgs::platform_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::miro_msgs::platform_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::miro_msgs::platform_control_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::miro_msgs::platform_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "772dcaa16082fd0df16a4baa9867cf17";
  }

  static const char* value(const ::miro_msgs::platform_control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x772dcaa16082fd0dULL;
  static const uint64_t static_value2 = 0xf16a4baa9867cf17ULL;
};

template<class ContainerAllocator>
struct DataType< ::miro_msgs::platform_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "miro_msgs/platform_control";
  }

  static const char* value(const ::miro_msgs::platform_control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::miro_msgs::platform_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
# direction: downstream\n\
# destination: robot platform\n\
# description: control signals\n\
\n\
\n\
\n\
# the robot can be driven in different ways. all of these\n\
# signal streams are active in parallel. to use only a\n\
# subset of these streams, leave the remainder in a \"no\n\
# effect\" state (see below for each stream).\n\
\n\
\n\
\n\
#### HEADER\n\
\n\
# standard header\n\
std_msgs/Header header\n\
\n\
# message flags\n\
uint32 msg_flags\n\
\n\
# set as many of these as required to force synchronisation\n\
# between those streams (you must set identical flags on\n\
# each stream)\n\
uint32 FLAG_SYNC_PLATFORM=1\n\
uint32 FLAG_SYNC_CORE=2\n\
\n\
\n\
\n\
#### DRIVE BODY DIRECT\n\
\n\
# direct drive of wheels\n\
# all elements zero has no effect on body\n\
geometry_msgs/Twist body_vel\n\
\n\
# direct drive of kinematic chain (Rad, Rad/sec)\n\
# body_config_speed == 0 causes no changes\n\
# body_config_speed == -1 means infinite speed (move aqap)\n\
# first (of four) DOF is not implemented on current robots\n\
float32[4] body_config\n\
float32[4] body_config_speed\n\
\n\
\n\
\n\
#### DRIVE BODY THROUGH MOTION CONTROLLER\n\
\n\
#	Flags (see miro_constants/miro.py)\n\
#\n\
#	MIRO_BODY_MOVE_START\n\
#		Raise this flag to start a move to the 2D pose\n\
#		specified in \"body_move\", relative to the current\n\
#		pose. The move will be planned using Park's &\n\
#		Kuipers's 2011 (ICRA) algorithm.\n\
#\n\
#	MIRO_BODY_MOVE_CONTINUE\n\
#		Raise this flag to continue a move that has already\n\
#		been started.\n\
#\n\
#		NB: BODY_MOVE_CONTINUE must be raised in the same\n\
#		frame that BODY_MOVE_START is raised; thus, the\n\
#		flags will be set as:\n\
#\n\
#		START		1 0 0 0 0 0 0 0 ...\n\
#		CONTINUE	1 1 1 1 1 1 1 1 ...\n\
#\n\
#	If no flags are set, body_move has no effect\n\
uint32 body_move_flags\n\
\n\
# desired change in body pose\n\
geometry_msgs/Pose2D body_move\n\
\n\
\n\
\n\
#### DRIVE COSMETIC DOFs DIRECT\n\
\n\
# cosmetic kinematics\n\
float32 tail # -1 (droop) through zero to +1 (wag)\n\
float32[2] ear_rotate # 0 to 1\n\
float32 eyelid_closure # 0 to 1\n\
int16 blink_time # pulse +ve to start a blink (-ve == double blink)\n\
\n\
# lights: drive the LED displays through a simple filter\n\
uint8 lights_max_drive # maximum drive level when lights are at full amplitude (0-255); 127 is a sensible value\n\
uint8 lights_dphase # delta phase between adjacent LEDs (0-255)\n\
uint8 lights_phase # lighting phase (0-255)\n\
uint8 lights_amp # amplitude of lighting pattern (0-255)\n\
int8 lights_off # arithmetic offset of lighting pattern (-128 to 127)\n\
\n\
# NB: here, and below, we use a uint16 container because\n\
# the access syntax is more convenient from python (uint8\n\
# arrays are implemented as strings by rospy)\n\
uint16[3] lights_rgb # lighting color (0 to 255)\n\
\n\
# low-level lights: drive 18 color channels directly;\n\
# organisation is by color channel (r, g, b) first, then\n\
# by led (front, middle, back), and by side (left, right),\n\
# so that lights_raw[0] is red, front, left and\n\
# lights_raw[1] is green, front, left.\n\
uint16[18] lights_raw # lighting color channel (0 to 255)\n\
\n\
# sounds\n\
uint16 sound_index_P1 # pulse +ve to start playing a sound stored in P1 library\n\
uint16 sound_index_P2 # pulse +ve to start playing a sound stored in P2 library\n\
\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# Deprecated\n\
# Please use the full 3D pose.\n\
\n\
# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n\
\n\
# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n\
\n\
\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const ::miro_msgs::platform_control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::miro_msgs::platform_control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.msg_flags);
      stream.next(m.body_vel);
      stream.next(m.body_config);
      stream.next(m.body_config_speed);
      stream.next(m.body_move_flags);
      stream.next(m.body_move);
      stream.next(m.tail);
      stream.next(m.ear_rotate);
      stream.next(m.eyelid_closure);
      stream.next(m.blink_time);
      stream.next(m.lights_max_drive);
      stream.next(m.lights_dphase);
      stream.next(m.lights_phase);
      stream.next(m.lights_amp);
      stream.next(m.lights_off);
      stream.next(m.lights_rgb);
      stream.next(m.lights_raw);
      stream.next(m.sound_index_P1);
      stream.next(m.sound_index_P2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct platform_control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::miro_msgs::platform_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::miro_msgs::platform_control_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "msg_flags: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.msg_flags);
    s << indent << "body_vel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.body_vel);
    s << indent << "body_config[]" << std::endl;
    for (size_t i = 0; i < v.body_config.size(); ++i)
    {
      s << indent << "  body_config[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.body_config[i]);
    }
    s << indent << "body_config_speed[]" << std::endl;
    for (size_t i = 0; i < v.body_config_speed.size(); ++i)
    {
      s << indent << "  body_config_speed[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.body_config_speed[i]);
    }
    s << indent << "body_move_flags: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.body_move_flags);
    s << indent << "body_move: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.body_move);
    s << indent << "tail: ";
    Printer<float>::stream(s, indent + "  ", v.tail);
    s << indent << "ear_rotate[]" << std::endl;
    for (size_t i = 0; i < v.ear_rotate.size(); ++i)
    {
      s << indent << "  ear_rotate[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.ear_rotate[i]);
    }
    s << indent << "eyelid_closure: ";
    Printer<float>::stream(s, indent + "  ", v.eyelid_closure);
    s << indent << "blink_time: ";
    Printer<int16_t>::stream(s, indent + "  ", v.blink_time);
    s << indent << "lights_max_drive: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lights_max_drive);
    s << indent << "lights_dphase: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lights_dphase);
    s << indent << "lights_phase: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lights_phase);
    s << indent << "lights_amp: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lights_amp);
    s << indent << "lights_off: ";
    Printer<int8_t>::stream(s, indent + "  ", v.lights_off);
    s << indent << "lights_rgb[]" << std::endl;
    for (size_t i = 0; i < v.lights_rgb.size(); ++i)
    {
      s << indent << "  lights_rgb[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.lights_rgb[i]);
    }
    s << indent << "lights_raw[]" << std::endl;
    for (size_t i = 0; i < v.lights_raw.size(); ++i)
    {
      s << indent << "  lights_raw[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.lights_raw[i]);
    }
    s << indent << "sound_index_P1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.sound_index_P1);
    s << indent << "sound_index_P2: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.sound_index_P2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIRO_MSGS_MESSAGE_PLATFORM_CONTROL_H
