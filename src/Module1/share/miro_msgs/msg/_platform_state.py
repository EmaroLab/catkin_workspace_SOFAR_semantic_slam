# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from miro_msgs/platform_state.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class platform_state(genpy.Message):
  _md5sum = "09c2ef52295e8a4f8b13c274212a1728"
  _type = "miro_msgs/platform_state"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """
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





================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','msg_flags','time_usec','P1_release','P1_mode','P1_error_code','P1_R_signals','success_r','success_w','seed','P2_release','P2_bootloader_release','serial_number','P2_mode','P2C_R_signals','P2L_R_signals','P2U_R_signals','num_free_stream_buf','msg_id_of_last_stream_buf_recv','rtc_hrs','rtc_min','rtc_sec','rtc_skew','P3_release','number_of_loaded_sounds']
  _slot_types = ['std_msgs/Header','uint32','int32','uint16','uint8','uint8','uint32','uint32','uint32','uint32','uint16','uint16','uint32','uint8','uint32','uint32','uint32','uint8','uint16','int8','int8','int8','int8','uint16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,msg_flags,time_usec,P1_release,P1_mode,P1_error_code,P1_R_signals,success_r,success_w,seed,P2_release,P2_bootloader_release,serial_number,P2_mode,P2C_R_signals,P2L_R_signals,P2U_R_signals,num_free_stream_buf,msg_id_of_last_stream_buf_recv,rtc_hrs,rtc_min,rtc_sec,rtc_skew,P3_release,number_of_loaded_sounds

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(platform_state, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.msg_flags is None:
        self.msg_flags = 0
      if self.time_usec is None:
        self.time_usec = 0
      if self.P1_release is None:
        self.P1_release = 0
      if self.P1_mode is None:
        self.P1_mode = 0
      if self.P1_error_code is None:
        self.P1_error_code = 0
      if self.P1_R_signals is None:
        self.P1_R_signals = 0
      if self.success_r is None:
        self.success_r = 0
      if self.success_w is None:
        self.success_w = 0
      if self.seed is None:
        self.seed = 0
      if self.P2_release is None:
        self.P2_release = 0
      if self.P2_bootloader_release is None:
        self.P2_bootloader_release = 0
      if self.serial_number is None:
        self.serial_number = 0
      if self.P2_mode is None:
        self.P2_mode = 0
      if self.P2C_R_signals is None:
        self.P2C_R_signals = 0
      if self.P2L_R_signals is None:
        self.P2L_R_signals = 0
      if self.P2U_R_signals is None:
        self.P2U_R_signals = 0
      if self.num_free_stream_buf is None:
        self.num_free_stream_buf = 0
      if self.msg_id_of_last_stream_buf_recv is None:
        self.msg_id_of_last_stream_buf_recv = 0
      if self.rtc_hrs is None:
        self.rtc_hrs = 0
      if self.rtc_min is None:
        self.rtc_min = 0
      if self.rtc_sec is None:
        self.rtc_sec = 0
      if self.rtc_skew is None:
        self.rtc_skew = 0
      if self.P3_release is None:
        self.P3_release = 0
      if self.number_of_loaded_sounds is None:
        self.number_of_loaded_sounds = 0
    else:
      self.header = std_msgs.msg.Header()
      self.msg_flags = 0
      self.time_usec = 0
      self.P1_release = 0
      self.P1_mode = 0
      self.P1_error_code = 0
      self.P1_R_signals = 0
      self.success_r = 0
      self.success_w = 0
      self.seed = 0
      self.P2_release = 0
      self.P2_bootloader_release = 0
      self.serial_number = 0
      self.P2_mode = 0
      self.P2C_R_signals = 0
      self.P2L_R_signals = 0
      self.P2U_R_signals = 0
      self.num_free_stream_buf = 0
      self.msg_id_of_last_stream_buf_recv = 0
      self.rtc_hrs = 0
      self.rtc_min = 0
      self.rtc_sec = 0
      self.rtc_skew = 0
      self.P3_release = 0
      self.number_of_loaded_sounds = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_IiH2B4I2HIB3IBH4bHh().pack(_x.msg_flags, _x.time_usec, _x.P1_release, _x.P1_mode, _x.P1_error_code, _x.P1_R_signals, _x.success_r, _x.success_w, _x.seed, _x.P2_release, _x.P2_bootloader_release, _x.serial_number, _x.P2_mode, _x.P2C_R_signals, _x.P2L_R_signals, _x.P2U_R_signals, _x.num_free_stream_buf, _x.msg_id_of_last_stream_buf_recv, _x.rtc_hrs, _x.rtc_min, _x.rtc_sec, _x.rtc_skew, _x.P3_release, _x.number_of_loaded_sounds))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.msg_flags, _x.time_usec, _x.P1_release, _x.P1_mode, _x.P1_error_code, _x.P1_R_signals, _x.success_r, _x.success_w, _x.seed, _x.P2_release, _x.P2_bootloader_release, _x.serial_number, _x.P2_mode, _x.P2C_R_signals, _x.P2L_R_signals, _x.P2U_R_signals, _x.num_free_stream_buf, _x.msg_id_of_last_stream_buf_recv, _x.rtc_hrs, _x.rtc_min, _x.rtc_sec, _x.rtc_skew, _x.P3_release, _x.number_of_loaded_sounds,) = _get_struct_IiH2B4I2HIB3IBH4bHh().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_IiH2B4I2HIB3IBH4bHh().pack(_x.msg_flags, _x.time_usec, _x.P1_release, _x.P1_mode, _x.P1_error_code, _x.P1_R_signals, _x.success_r, _x.success_w, _x.seed, _x.P2_release, _x.P2_bootloader_release, _x.serial_number, _x.P2_mode, _x.P2C_R_signals, _x.P2L_R_signals, _x.P2U_R_signals, _x.num_free_stream_buf, _x.msg_id_of_last_stream_buf_recv, _x.rtc_hrs, _x.rtc_min, _x.rtc_sec, _x.rtc_skew, _x.P3_release, _x.number_of_loaded_sounds))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.msg_flags, _x.time_usec, _x.P1_release, _x.P1_mode, _x.P1_error_code, _x.P1_R_signals, _x.success_r, _x.success_w, _x.seed, _x.P2_release, _x.P2_bootloader_release, _x.serial_number, _x.P2_mode, _x.P2C_R_signals, _x.P2L_R_signals, _x.P2U_R_signals, _x.num_free_stream_buf, _x.msg_id_of_last_stream_buf_recv, _x.rtc_hrs, _x.rtc_min, _x.rtc_sec, _x.rtc_skew, _x.P3_release, _x.number_of_loaded_sounds,) = _get_struct_IiH2B4I2HIB3IBH4bHh().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_IiH2B4I2HIB3IBH4bHh = None
def _get_struct_IiH2B4I2HIB3IBH4bHh():
    global _struct_IiH2B4I2HIB3IBH4bHh
    if _struct_IiH2B4I2HIB3IBH4bHh is None:
        _struct_IiH2B4I2HIB3IBH4bHh = struct.Struct("<IiH2B4I2HIB3IBH4bHh")
    return _struct_IiH2B4I2HIB3IBH4bHh