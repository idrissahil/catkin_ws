#include <dd_nav_goal/dd_q_combo_box.h>

namespace dd_nav_goal
{

struct LexicalTopicInfo
{
  bool operator()(const ros::master::TopicInfo& a,
                  const ros::master::TopicInfo& b)
  {
    return a.name < b.name;
  }
};

DDQComboBox::DDQComboBox(QWidget *parent)
{

}

DDQComboBox::~DDQComboBox()
{

}

void DDQComboBox::showPopup()
{
  QString current = itemText(currentIndex());

  ros::master::V_TopicInfo all_topics;
  ros::master::getTopics(all_topics);
  std::sort(all_topics.begin(), all_topics.end(), LexicalTopicInfo());

  clear();
  insertItem(0, "");

  int index = 1;
  int selected_index = 0;
  for (ros::master::V_TopicInfo::iterator it = all_topics.begin();
       it != all_topics.end(); ++it)
  {
    if (it->datatype == "geometry_msgs/PoseStamped")
    {
      QString temp = QString::fromStdString(it->name);
      if (current == temp)
      {
        selected_index = index;
      }

      insertItem(index++, temp);
    }
  }

  setCurrentIndex(selected_index);

  QComboBox::showPopup();
}
}
