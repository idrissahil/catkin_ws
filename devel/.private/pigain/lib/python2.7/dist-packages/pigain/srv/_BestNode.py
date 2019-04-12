# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pigain/BestNodeRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class BestNodeRequest(genpy.Message):
  _md5sum = "175655a8173e44d2022f409e7e374544"
  _type = "pigain/BestNodeRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point pos
float64 threshold

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['pos','threshold']
  _slot_types = ['geometry_msgs/Point','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pos,threshold

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BestNodeRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pos is None:
        self.pos = geometry_msgs.msg.Point()
      if self.threshold is None:
        self.threshold = 0.
    else:
      self.pos = geometry_msgs.msg.Point()
      self.threshold = 0.

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
      buff.write(_get_struct_4d().pack(_x.pos.x, _x.pos.y, _x.pos.z, _x.threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pos is None:
        self.pos = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.pos.x, _x.pos.y, _x.pos.z, _x.threshold,) = _get_struct_4d().unpack(str[start:end])
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
      buff.write(_get_struct_4d().pack(_x.pos.x, _x.pos.y, _x.pos.z, _x.threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pos is None:
        self.pos = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.pos.x, _x.pos.y, _x.pos.z, _x.threshold,) = _get_struct_4d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pigain/BestNodeResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class BestNodeResponse(genpy.Message):
  _md5sum = "aa72b0c3593d8d5143961cb50a19c5e1"
  _type = "pigain/BestNodeResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point[] best_node
float64 gain


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['best_node','gain']
  _slot_types = ['geometry_msgs/Point[]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       best_node,gain

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BestNodeResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.best_node is None:
        self.best_node = []
      if self.gain is None:
        self.gain = 0.
    else:
      self.best_node = []
      self.gain = 0.

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
      length = len(self.best_node)
      buff.write(_struct_I.pack(length))
      for val1 in self.best_node:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_d().pack(self.gain))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.best_node is None:
        self.best_node = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.best_node = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.best_node.append(val1)
      start = end
      end += 8
      (self.gain,) = _get_struct_d().unpack(str[start:end])
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
      length = len(self.best_node)
      buff.write(_struct_I.pack(length))
      for val1 in self.best_node:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_d().pack(self.gain))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.best_node is None:
        self.best_node = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.best_node = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.best_node.append(val1)
      start = end
      end += 8
      (self.gain,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class BestNode(object):
  _type          = 'pigain/BestNode'
  _md5sum = '6ef124f7650f66bfe5fcee2adc4b7d2c'
  _request_class  = BestNodeRequest
  _response_class = BestNodeResponse
