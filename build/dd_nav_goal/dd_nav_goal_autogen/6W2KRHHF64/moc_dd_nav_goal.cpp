/****************************************************************************
** Meta object code from reading C++ file 'dd_nav_goal.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/dd_nav_goal/include/dd_nav_goal/dd_nav_goal.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'dd_nav_goal.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_dd_nav_goal__DDNavGoalPanel_t {
    QByteArrayData data[22];
    char stringdata0[321];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_dd_nav_goal__DDNavGoalPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_dd_nav_goal__DDNavGoalPanel_t qt_meta_stringdata_dd_nav_goal__DDNavGoalPanel = {
    {
QT_MOC_LITERAL(0, 0, 27), // "dd_nav_goal::DDNavGoalPanel"
QT_MOC_LITERAL(1, 28, 11), // "updateTopic"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 11), // "posePublish"
QT_MOC_LITERAL(4, 53, 27), // "geometry_msgs::PoseStamped&"
QT_MOC_LITERAL(5, 81, 4), // "pose"
QT_MOC_LITERAL(6, 86, 12), // "updateSlider"
QT_MOC_LITERAL(7, 99, 19), // "updateCurrentZValue"
QT_MOC_LITERAL(8, 119, 15), // "updateMinZValue"
QT_MOC_LITERAL(9, 135, 15), // "updateMaxZValue"
QT_MOC_LITERAL(10, 151, 8), // "setTopic"
QT_MOC_LITERAL(11, 160, 12), // "new_in_topic"
QT_MOC_LITERAL(12, 173, 13), // "new_out_topic"
QT_MOC_LITERAL(13, 187, 17), // "navGoal2DCallback"
QT_MOC_LITERAL(14, 205, 36), // "geometry_msgs::PoseStamped::C..."
QT_MOC_LITERAL(15, 242, 4), // "goal"
QT_MOC_LITERAL(16, 247, 15), // "px4PoseCallback"
QT_MOC_LITERAL(17, 263, 3), // "msg"
QT_MOC_LITERAL(18, 267, 16), // "slamPoseCallback"
QT_MOC_LITERAL(19, 284, 17), // "republishSetpoint"
QT_MOC_LITERAL(20, 302, 14), // "cancelSetpoint"
QT_MOC_LITERAL(21, 317, 3) // "arm"

    },
    "dd_nav_goal::DDNavGoalPanel\0updateTopic\0"
    "\0posePublish\0geometry_msgs::PoseStamped&\0"
    "pose\0updateSlider\0updateCurrentZValue\0"
    "updateMinZValue\0updateMaxZValue\0"
    "setTopic\0new_in_topic\0new_out_topic\0"
    "navGoal2DCallback\0"
    "geometry_msgs::PoseStamped::ConstPtr\0"
    "goal\0px4PoseCallback\0msg\0slamPoseCallback\0"
    "republishSetpoint\0cancelSetpoint\0arm"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_dd_nav_goal__DDNavGoalPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   79,    2, 0x09 /* Protected */,
       3,    1,   80,    2, 0x09 /* Protected */,
       6,    0,   83,    2, 0x09 /* Protected */,
       7,    0,   84,    2, 0x09 /* Protected */,
       8,    0,   85,    2, 0x09 /* Protected */,
       9,    0,   86,    2, 0x09 /* Protected */,
      10,    2,   87,    2, 0x09 /* Protected */,
      13,    1,   92,    2, 0x09 /* Protected */,
      16,    1,   95,    2, 0x09 /* Protected */,
      18,    1,   98,    2, 0x09 /* Protected */,
      19,    0,  101,    2, 0x09 /* Protected */,
      20,    0,  102,    2, 0x09 /* Protected */,
      21,    0,  103,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4,    5,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   11,   12,
    QMetaType::Void, 0x80000000 | 14,   15,
    QMetaType::Void, 0x80000000 | 14,   17,
    QMetaType::Void, 0x80000000 | 14,   17,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void dd_nav_goal::DDNavGoalPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DDNavGoalPanel *_t = static_cast<DDNavGoalPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateTopic(); break;
        case 1: _t->posePublish((*reinterpret_cast< geometry_msgs::PoseStamped(*)>(_a[1]))); break;
        case 2: _t->updateSlider(); break;
        case 3: _t->updateCurrentZValue(); break;
        case 4: _t->updateMinZValue(); break;
        case 5: _t->updateMaxZValue(); break;
        case 6: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 7: _t->navGoal2DCallback((*reinterpret_cast< const geometry_msgs::PoseStamped::ConstPtr(*)>(_a[1]))); break;
        case 8: _t->px4PoseCallback((*reinterpret_cast< const geometry_msgs::PoseStamped::ConstPtr(*)>(_a[1]))); break;
        case 9: _t->slamPoseCallback((*reinterpret_cast< const geometry_msgs::PoseStamped::ConstPtr(*)>(_a[1]))); break;
        case 10: _t->republishSetpoint(); break;
        case 11: _t->cancelSetpoint(); break;
        case 12: _t->arm(); break;
        default: ;
        }
    }
}

const QMetaObject dd_nav_goal::DDNavGoalPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_dd_nav_goal__DDNavGoalPanel.data,
      qt_meta_data_dd_nav_goal__DDNavGoalPanel,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *dd_nav_goal::DDNavGoalPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *dd_nav_goal::DDNavGoalPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_dd_nav_goal__DDNavGoalPanel.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int dd_nav_goal::DDNavGoalPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
