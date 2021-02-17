#include "kuka_sim/sceneObject_manager.hpp"

SceneObjectManager::SceneObjectManager()
{
    sceneObj_mgr_srv_ = nh_sceneObj_.advertiseService("/publish_scene_object", &SceneObjectManager::SceneObjService, this);
}

bool SceneObjectManager::SceneObjService(kuka_sim::SceneObjSrv::Request &req, kuka_sim::SceneObjSrv::Response &res)
{
    visual_tools_.reset(new rviz_visual_tools::RvizVisualTools("world",req.frame_id));
    visual_tools_->setBaseFrame("world");
    visual_tools_->publishMesh(req.mesh_pose, req.mesh_path);
    visual_tools_->trigger();
}

int main(int argc, char** argv)
{
    ros::init(argc,argv,"SceneObjectManager");

    SceneObjectManager sceneObj;
    
    while(ros::ok())
    {
        ros::Rate loop_rate(10);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}