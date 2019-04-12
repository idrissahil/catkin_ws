// Generated by gencpp from file aeplanner/aeplannerFeedback.msg
// DO NOT EDIT!


#ifndef AEPLANNER_MESSAGE_AEPLANNERFEEDBACK_H
#define AEPLANNER_MESSAGE_AEPLANNERFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aeplanner
{
template <class ContainerAllocator>
struct aeplannerFeedback_
{
  typedef aeplannerFeedback_<ContainerAllocator> Type;

  aeplannerFeedback_()
    {
    }
  aeplannerFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::aeplanner::aeplannerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aeplanner::aeplannerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct aeplannerFeedback_

typedef ::aeplanner::aeplannerFeedback_<std::allocator<void> > aeplannerFeedback;

typedef boost::shared_ptr< ::aeplanner::aeplannerFeedback > aeplannerFeedbackPtr;
typedef boost::shared_ptr< ::aeplanner::aeplannerFeedback const> aeplannerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aeplanner::aeplannerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aeplanner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'aeplanner': ['/home/idris/catkin_ws/src/aeplanner/aeplanner/msg', '/home/idris/catkin_ws/devel/.private/aeplanner/share/aeplanner/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/melodic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aeplanner::aeplannerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aeplanner::aeplannerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aeplanner::aeplannerFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::aeplanner::aeplannerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aeplanner/aeplannerFeedback";
  }

  static const char* value(const ::aeplanner::aeplannerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define a feedback message\n\
\n\
";
  }

  static const char* value(const ::aeplanner::aeplannerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct aeplannerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aeplanner::aeplannerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::aeplanner::aeplannerFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // AEPLANNER_MESSAGE_AEPLANNERFEEDBACK_H