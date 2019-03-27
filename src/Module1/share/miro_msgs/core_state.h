// Generated by gencpp from file miro_msgs/core_state.msg
// DO NOT EDIT!


#ifndef MIRO_MSGS_MESSAGE_CORE_STATE_H
#define MIRO_MSGS_MESSAGE_CORE_STATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <miro_msgs/affect.h>
#include <miro_msgs/affect.h>
#include <miro_msgs/sleep.h>
#include <miro_msgs/priority_peak.h>
#include <miro_msgs/audio_event.h>

namespace miro_msgs
{
template <class ContainerAllocator>
struct core_state_
{
  typedef core_state_<ContainerAllocator> Type;

  core_state_()
    : header()
    , msg_flags(0)
    , time_usec(0)
    , emotion()
    , mood()
    , sleep()
    , priority()
    , priority_peak()
    , audio_event()
    , selection()
    , disinhibition()  {
      priority.assign(0.0);

      selection.assign(0.0);

      disinhibition.assign(0.0);
  }
  core_state_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , msg_flags(0)
    , time_usec(0)
    , emotion(_alloc)
    , mood(_alloc)
    , sleep(_alloc)
    , priority()
    , priority_peak()
    , audio_event(_alloc)
    , selection()
    , disinhibition()  {
  (void)_alloc;
      priority.assign(0.0);

      priority_peak.assign( ::miro_msgs::priority_peak_<ContainerAllocator> (_alloc));

      selection.assign(0.0);

      disinhibition.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _msg_flags_type;
  _msg_flags_type msg_flags;

   typedef int32_t _time_usec_type;
  _time_usec_type time_usec;

   typedef  ::miro_msgs::affect_<ContainerAllocator>  _emotion_type;
  _emotion_type emotion;

   typedef  ::miro_msgs::affect_<ContainerAllocator>  _mood_type;
  _mood_type mood;

   typedef  ::miro_msgs::sleep_<ContainerAllocator>  _sleep_type;
  _sleep_type sleep;

   typedef boost::array<float, 8>  _priority_type;
  _priority_type priority;

   typedef boost::array< ::miro_msgs::priority_peak_<ContainerAllocator> , 3>  _priority_peak_type;
  _priority_peak_type priority_peak;

   typedef  ::miro_msgs::audio_event_<ContainerAllocator>  _audio_event_type;
  _audio_event_type audio_event;

   typedef boost::array<float, 8>  _selection_type;
  _selection_type selection;

   typedef boost::array<float, 8>  _disinhibition_type;
  _disinhibition_type disinhibition;




  typedef boost::shared_ptr< ::miro_msgs::core_state_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::miro_msgs::core_state_<ContainerAllocator> const> ConstPtr;

}; // struct core_state_

typedef ::miro_msgs::core_state_<std::allocator<void> > core_state;

typedef boost::shared_ptr< ::miro_msgs::core_state > core_statePtr;
typedef boost::shared_ptr< ::miro_msgs::core_state const> core_stateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::miro_msgs::core_state_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::miro_msgs::core_state_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::miro_msgs::core_state_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::miro_msgs::core_state_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::miro_msgs::core_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::miro_msgs::core_state_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::miro_msgs::core_state_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::miro_msgs::core_state_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::miro_msgs::core_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "522684231c219a6061e3a57fd3a4cba3";
  }

  static const char* value(const ::miro_msgs::core_state_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x522684231c219a60ULL;
  static const uint64_t static_value2 = 0x61e3a57fd3a4cba3ULL;
};

template<class ContainerAllocator>
struct DataType< ::miro_msgs::core_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "miro_msgs/core_state";
  }

  static const char* value(const ::miro_msgs::core_state_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::miro_msgs::core_state_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
# direction: upstream\n\
# source: biomimetic core\n\
# description: state data\n\
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
# additional header\n\
int32 time_usec			# time in usec with rollover at 1<<29\n\
\n\
\n\
\n\
#### AFFECT\n\
\n\
miro_msgs/affect emotion\n\
miro_msgs/affect mood\n\
miro_msgs/sleep sleep\n\
\n\
\n\
\n\
#### ACTION\n\
\n\
# priority of each action sub-system in P2\n\
float32[8] priority\n\
\n\
\n\
\n\
#### SPATIAL\n\
\n\
miro_msgs/priority_peak[3] priority_peak\n\
miro_msgs/audio_event audio_event\n\
\n\
\n\
\n\
#### BRANCH\n\
\n\
# output of action selection system\n\
float32[8] selection\n\
float32[8] disinhibition\n\
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
MSG: miro_msgs/affect\n\
float32 valence\n\
float32 arousal\n\
\n\
================================================================================\n\
MSG: miro_msgs/sleep\n\
float32 wakefulness\n\
float32 pressure\n\
\n\
================================================================================\n\
MSG: miro_msgs/priority_peak\n\
float32 azim\n\
float32 elev\n\
float32 height\n\
float32 size\n\
int32 t_complete\n\
\n\
\n\
================================================================================\n\
MSG: miro_msgs/audio_event\n\
uint32 flags\n\
uint32 sample_number\n\
float32 azim\n\
float32 elev\n\
float32 magnitude\n\
int32 t_complete\n\
\n\
";
  }

  static const char* value(const ::miro_msgs::core_state_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::miro_msgs::core_state_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.msg_flags);
      stream.next(m.time_usec);
      stream.next(m.emotion);
      stream.next(m.mood);
      stream.next(m.sleep);
      stream.next(m.priority);
      stream.next(m.priority_peak);
      stream.next(m.audio_event);
      stream.next(m.selection);
      stream.next(m.disinhibition);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct core_state_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::miro_msgs::core_state_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::miro_msgs::core_state_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "msg_flags: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.msg_flags);
    s << indent << "time_usec: ";
    Printer<int32_t>::stream(s, indent + "  ", v.time_usec);
    s << indent << "emotion: ";
    s << std::endl;
    Printer< ::miro_msgs::affect_<ContainerAllocator> >::stream(s, indent + "  ", v.emotion);
    s << indent << "mood: ";
    s << std::endl;
    Printer< ::miro_msgs::affect_<ContainerAllocator> >::stream(s, indent + "  ", v.mood);
    s << indent << "sleep: ";
    s << std::endl;
    Printer< ::miro_msgs::sleep_<ContainerAllocator> >::stream(s, indent + "  ", v.sleep);
    s << indent << "priority[]" << std::endl;
    for (size_t i = 0; i < v.priority.size(); ++i)
    {
      s << indent << "  priority[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.priority[i]);
    }
    s << indent << "priority_peak[]" << std::endl;
    for (size_t i = 0; i < v.priority_peak.size(); ++i)
    {
      s << indent << "  priority_peak[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::miro_msgs::priority_peak_<ContainerAllocator> >::stream(s, indent + "    ", v.priority_peak[i]);
    }
    s << indent << "audio_event: ";
    s << std::endl;
    Printer< ::miro_msgs::audio_event_<ContainerAllocator> >::stream(s, indent + "  ", v.audio_event);
    s << indent << "selection[]" << std::endl;
    for (size_t i = 0; i < v.selection.size(); ++i)
    {
      s << indent << "  selection[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.selection[i]);
    }
    s << indent << "disinhibition[]" << std::endl;
    for (size_t i = 0; i < v.disinhibition.size(); ++i)
    {
      s << indent << "  disinhibition[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.disinhibition[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIRO_MSGS_MESSAGE_CORE_STATE_H