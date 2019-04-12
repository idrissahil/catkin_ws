#ifndef NAV_GOAL_DD_Q_COMBO_BOX_H
#define NAV_GOAL_DD_Q_COMBO_BOX_H

#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif

#include <QComboBox>

namespace dd_nav_goal
{
class DDQComboBox : public QComboBox
{
  Q_OBJECT
public:
  explicit DDQComboBox(QWidget* parent = 0);
  virtual ~DDQComboBox();

public:
  virtual void showPopup();
};
}

#endif // NAV_GOAL_DD_Q_COMBO_BOX_H
