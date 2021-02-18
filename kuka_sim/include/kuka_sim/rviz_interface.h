#ifndef PLUGIN_CLASS
#define PLUGIN_CLASS

#include<vector>
#include<kuka_sim/utilities.hpp>

#ifndef Q_MOC_RUN
#include<ros/ros.h>
#include<rviz/panel.h>
#endif


class QTextEdit;
class QLineEdit;
class QPushButton;
class QLabel;
class QVBoxLayout;
class QHBoxLayout;
class QFrame;
class QString;
class QComboBox;
class QTableWidget;

namespace KukaInterfacePanel
{
    class KukaInterface: public rviz::Panel
    {
        Q_OBJECT
        public:
            KukaInterface(QWidget* parent = 0);
            virtual void load(const rviz::Config& config );
            virtual void save(const rviz::Config config ) const;

        public Q_SLOTS:
            void setTopic(const QString& topic);

        protected Q_SLOTS:
            //class methods
            void addTitleBar(std::string );
            void addTrajectoryBox();
            void addSceneObjBox();
            void addToolBox();
            void addOtherUtils();

            void load_trajcsv_clicked();
            void update_scene_obj_clicked();

        protected:
            //class variables
            QVBoxLayout* main_layout_;
            QTextEdit* status_window_;
            QLineEdit* sceneObj_T_rob_;
            QComboBox* traj_type_sel_;
            QPushButton* del_sceneObj_;
            QPushButton* updte_sceneObj_;
            QPushButton* load_trajcsv_;
            QPushButton* load_tool_;
            QPushButton* exec_mtn_;
            QPushButton* save_scene_;
            QPushButton* load_scene_;
            QPushButton* exit_sim_;
            QLabel* trajfileName_;
            QLabel* sceneObjFileName_;
            QLabel* toolObjFileName_;
            QTableWidget* sceneObj_manager_;

            ros::NodeHandle nh_;
            ros::ServiceClient sceneObj_client_;
            Eigen::MatrixXd trajectory_;
    };
}

#endif