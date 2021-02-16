/******************************************
 * ROS Headers
 * ****************************************/
#include <ros/ros.h>
#include <ros/package.h>

/******************************************
 * Qt Headers
 * ****************************************/
#include <Qt>
#include <QPainter>
#include <QPushButton>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QComboBox>
#include <QLabel>
#include <QTableWidget>
#include <QFrame>
#include <QAction>
#include <QVariant>
#include <QStringList>
#include <QTextEdit>
#include "dirent.h"
#include <QString>
#include <QLayout>
#include <QLineEdit>
#include <QFileDialog>
#include <QTextStream>
#include <QApplication>
#include <QDesktopWidget>

/******************************************
 * Standard Headers
 * ****************************************/
#include <stdio.h>
#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <kuka_sim/rviz_interface.h>


namespace KukaInterfacePanel
{
    KukaInterface::KukaInterface(QWidget* parent ): rviz::Panel(parent)
    {
        QRect window = QApplication::desktop()->screenGeometry();
        int h = window.height();
        int w = window.width();

        //Layout for GUI buttons
        main_layout_ = new QVBoxLayout;
        main_layout_->setAlignment(Qt::AlignTop);

        //Textbox for status
        addTitleBar("STATUS MESSAGES");
        status_window_ = new QTextEdit();
        status_window_->setText("Load the trajectory and scene objects to start");
        status_window_->setStyleSheet("font: 22pt;" "color: Black;" "background-color: white;");
        status_window_->setAlignment(Qt::AlignCenter);
        main_layout_->addWidget(status_window_);

        //Section for loading trajectory files
        addTitleBar("LOAD TRAJECTORY");
        addTrajectoryBox();

        //Section for loading scene objects
        addTitleBar("SCENE OBJECTS");
        addSceneObjBox();

        //Section for loading tool
        addTitleBar("TOOL SELECTION");
        addToolBox();

        //Section for adding other buttons
        addTitleBar("EXECUTION AND OPTIONS");
        addOtherUtils();

        //Setting the layout
        setLayout(main_layout_);
    }

    void KukaInterface::addTitleBar(std::string title)
    {
        QLabel* label = new QLabel(QString::fromStdString(title));
        label->setAlignment(Qt::AlignCenter);
        label->setStyleSheet("QLabel {background-color: lightGray; color: black;}");
        label->heightForWidth(10);
        main_layout_->addWidget(label);
    }

    void KukaInterface::addTrajectoryBox()
    {
        QVBoxLayout* traj_box = new QVBoxLayout;
        
        QHBoxLayout* upperSection = new QHBoxLayout;
        QLabel* optionLabel = new QLabel;
        traj_type_sel_ = new QComboBox;
        optionLabel->setText("Select Configuration Space:");
        upperSection->addWidget(optionLabel);
        upperSection->addWidget(traj_type_sel_);
        
        QHBoxLayout* lowerSection = new QHBoxLayout;
        trajfileName_ = new QLabel;
        load_trajcsv_ = new QPushButton;
        trajfileName_->setText("No file Selected");
        load_trajcsv_->setText("Select File..");
        lowerSection->addWidget(trajfileName_);
        lowerSection->addWidget(load_trajcsv_);

        traj_box->addLayout(upperSection);
        traj_box->addLayout(lowerSection);
        main_layout_->addLayout(traj_box);
    }

    void KukaInterface::addSceneObjBox()
    {
        QVBoxLayout* sceneObj_box = new QVBoxLayout;
        QHBoxLayout* sceneObj_btns = new QHBoxLayout;
        sceneObj_manager_ = new QTableWidget;
        
        add_sceneObj_ = new QPushButton;
        del_sceneObj_ = new QPushButton;
        add_sceneObj_->setText("Add Scene Object");
        del_sceneObj_->setText("Delete Scene Object");
        sceneObj_btns->addWidget(add_sceneObj_);
        sceneObj_btns->addWidget(del_sceneObj_);

        sceneObj_box->addWidget(sceneObj_manager_);
        sceneObj_box->addLayout(sceneObj_btns);
        main_layout_->addLayout(sceneObj_box);
    }

    void KukaInterface::addToolBox()
    {
        QHBoxLayout* toolbox = new QHBoxLayout;
        toolObjFileName_ = new QLabel;
        load_tool_ = new QPushButton;
        toolObjFileName_->setText("No file Selected");
        load_tool_->setText("Select Tool..");
        toolbox->addWidget(toolObjFileName_);
        toolbox->addWidget(load_tool_);
        main_layout_->addLayout(toolbox);
    }

    void KukaInterface::addOtherUtils()
    {
        QVBoxLayout* otherUtils = new QVBoxLayout;
        exec_mtn_ = new QPushButton;
        exec_mtn_->setText("Execute Motion");

        QHBoxLayout* sceneState = new QHBoxLayout;
        save_scene_ = new QPushButton;
        load_scene_ = new QPushButton;
        save_scene_->setText("Save Scene");
        load_scene_->setText("Load Scene");
        sceneState->addWidget(save_scene_);
        sceneState->addWidget(load_scene_);

        otherUtils->addWidget(exec_mtn_);
        otherUtils->addLayout(sceneState);
        main_layout_->addLayout(otherUtils);
    }

    void KukaInterface::save( rviz::Config config ) const
    {
        rviz::Panel::save( config );
    }

    void KukaInterface::load( const rviz::Config& config )
    {
        rviz::Panel::load( config );
        int auto_state;
        int skip_state;
    }

}

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(KukaInterfacePanel::KukaInterface, rviz::Panel);