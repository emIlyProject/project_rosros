// Generated by gencpp from file iris/turtle.msg
// DO NOT EDIT!


#ifndef IRIS_MESSAGE_TURTLE_H
#define IRIS_MESSAGE_TURTLE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iris
{
template <class ContainerAllocator>
struct turtle_
{
  typedef turtle_<ContainerAllocator> Type;

  turtle_()
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , collision(false)
    , can_move(false)  {
    }
  turtle_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , collision(false)
    , can_move(false)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _theta_type;
  _theta_type theta;

   typedef uint8_t _collision_type;
  _collision_type collision;

   typedef uint8_t _can_move_type;
  _can_move_type can_move;





  typedef boost::shared_ptr< ::iris::turtle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iris::turtle_<ContainerAllocator> const> ConstPtr;

}; // struct turtle_

typedef ::iris::turtle_<std::allocator<void> > turtle;

typedef boost::shared_ptr< ::iris::turtle > turtlePtr;
typedef boost::shared_ptr< ::iris::turtle const> turtleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iris::turtle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iris::turtle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iris::turtle_<ContainerAllocator1> & lhs, const ::iris::turtle_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.theta == rhs.theta &&
    lhs.collision == rhs.collision &&
    lhs.can_move == rhs.can_move;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iris::turtle_<ContainerAllocator1> & lhs, const ::iris::turtle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iris

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iris::turtle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iris::turtle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iris::turtle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iris::turtle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iris::turtle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iris::turtle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iris::turtle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25dc20978cbfe4a40dd8a320ae60d96c";
  }

  static const char* value(const ::iris::turtle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25dc20978cbfe4a4ULL;
  static const uint64_t static_value2 = 0x0dd8a320ae60d96cULL;
};

template<class ContainerAllocator>
struct DataType< ::iris::turtle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iris/turtle";
  }

  static const char* value(const ::iris::turtle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iris::turtle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 theta\n"
"bool collision\n"
"bool can_move\n"
;
  }

  static const char* value(const ::iris::turtle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iris::turtle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
      stream.next(m.collision);
      stream.next(m.can_move);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct turtle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iris::turtle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iris::turtle_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
    s << indent << "collision: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision);
    s << indent << "can_move: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.can_move);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRIS_MESSAGE_TURTLE_H
