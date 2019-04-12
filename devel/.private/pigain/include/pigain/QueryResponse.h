// Generated by gencpp from file pigain/QueryResponse.msg
// DO NOT EDIT!


#ifndef PIGAIN_MESSAGE_QUERYRESPONSE_H
#define PIGAIN_MESSAGE_QUERYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pigain
{
template <class ContainerAllocator>
struct QueryResponse_
{
  typedef QueryResponse_<ContainerAllocator> Type;

  QueryResponse_()
    : mu(0.0)
    , sigma(0.0)
    , yaw(0.0)  {
    }
  QueryResponse_(const ContainerAllocator& _alloc)
    : mu(0.0)
    , sigma(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef double _mu_type;
  _mu_type mu;

   typedef double _sigma_type;
  _sigma_type sigma;

   typedef double _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::pigain::QueryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pigain::QueryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct QueryResponse_

typedef ::pigain::QueryResponse_<std::allocator<void> > QueryResponse;

typedef boost::shared_ptr< ::pigain::QueryResponse > QueryResponsePtr;
typedef boost::shared_ptr< ::pigain::QueryResponse const> QueryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pigain::QueryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pigain::QueryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pigain

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'pigain': ['/home/idris/catkin_ws/src/aeplanner/pigain/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pigain::QueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pigain::QueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pigain::QueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pigain::QueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pigain::QueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pigain::QueryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pigain::QueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09c416af56bccb0613e4f50335cc025a";
  }

  static const char* value(const ::pigain::QueryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09c416af56bccb06ULL;
  static const uint64_t static_value2 = 0x13e4f50335cc025aULL;
};

template<class ContainerAllocator>
struct DataType< ::pigain::QueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pigain/QueryResponse";
  }

  static const char* value(const ::pigain::QueryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pigain::QueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 mu\n\
float64 sigma\n\
float64 yaw\n\
\n\
";
  }

  static const char* value(const ::pigain::QueryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pigain::QueryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mu);
      stream.next(m.sigma);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QueryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pigain::QueryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pigain::QueryResponse_<ContainerAllocator>& v)
  {
    s << indent << "mu: ";
    Printer<double>::stream(s, indent + "  ", v.mu);
    s << indent << "sigma: ";
    Printer<double>::stream(s, indent + "  ", v.sigma);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIGAIN_MESSAGE_QUERYRESPONSE_H