// Generated by gencpp from file aeplanner_evaluation/CoverageRequest.msg
// DO NOT EDIT!


#ifndef AEPLANNER_EVALUATION_MESSAGE_COVERAGEREQUEST_H
#define AEPLANNER_EVALUATION_MESSAGE_COVERAGEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aeplanner_evaluation
{
template <class ContainerAllocator>
struct CoverageRequest_
{
  typedef CoverageRequest_<ContainerAllocator> Type;

  CoverageRequest_()
    {
    }
  CoverageRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CoverageRequest_

typedef ::aeplanner_evaluation::CoverageRequest_<std::allocator<void> > CoverageRequest;

typedef boost::shared_ptr< ::aeplanner_evaluation::CoverageRequest > CoverageRequestPtr;
typedef boost::shared_ptr< ::aeplanner_evaluation::CoverageRequest const> CoverageRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aeplanner_evaluation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aeplanner_evaluation/CoverageRequest";
  }

  static const char* value(const ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CoverageRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::aeplanner_evaluation::CoverageRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // AEPLANNER_EVALUATION_MESSAGE_COVERAGEREQUEST_H