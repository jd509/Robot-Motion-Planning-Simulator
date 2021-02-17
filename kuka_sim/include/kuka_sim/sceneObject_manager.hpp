#ifndef SCENE_OBJECT_MANAGER
#define SCENE_OBJECT_MANAGER

#include <ros/ros.h>
#include <rviz_visual_tools/rviz_visual_tools.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Pose.h>
#include <string>
#include <vector>
#include <iostream>
#include <ros/package.h>
#include "kuka_sim/SceneObjSrv.h"

class SceneObjectManager
{
    public:
    ros::NodeHandle nh_sceneObj_;
    ros::Subscriber path_pose_sub_;
    ros::Publisher sceneObj_pub_;
    ros::ServiceServer sceneObj_mgr_srv_;
    rviz_visual_tools::RvizVisualToolsPtr visual_tools_;

    SceneObjectManager();

    bool SceneObjService(kuka_sim::SceneObjSrv::Request &req, kuka_sim::SceneObjSrv::Response &res);
};

#endif