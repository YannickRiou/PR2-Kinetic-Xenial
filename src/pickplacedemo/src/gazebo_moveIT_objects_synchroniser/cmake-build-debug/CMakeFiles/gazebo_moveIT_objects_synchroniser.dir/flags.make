# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# compile CXX with /usr/bin/c++
CXX_FLAGS = -g   -std=c++11

CXX_DEFINES = -DROSCONSOLE_BACKEND_LOG4CXX -DROS_PACKAGE_NAME=\"gazebo_moveIT_objects_synchroniser\"

CXX_INCLUDES = -I/home/dtrimoul/PR2-Kinetic-Xenial/src/pickplacedemo/src/gazebo_moveIT_objects_synchroniser/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/actionlib_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/moveit_core/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/geometry_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/shape_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/visualization_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/moveit_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/sensor_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/trajectory_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/graph_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/moveit_ros_planning/include -I/home/dtrimoul/PR2-Kinetic-Xenial/devel/.private/moveit_ros_manipulation/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/common_msgs/sensor_msgs/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/background_processing/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/exceptions/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/backtrace/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/collision_detection/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/collision_detection_fcl/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/constraint_samplers/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/controller_manager/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/distance_field/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/dynamics_solver/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/kinematics_base/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/kinematics_metrics/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/robot_model/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/transforms/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/robot_state/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/robot_trajectory/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/kinematic_constraints/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/macros/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/planning_interface/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/planning_request_adapter/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/planning_scene/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/profiler/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/sensor_manager/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_core/trajectory_processing/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/mesh_filter/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/lazy_free_space_updater/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/depth_image_octomap_updater/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/point_containment_filter/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/occupancy_map_monitor/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/pointcloud_octomap_updater/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/perception/semantic_world/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/rdf_loader/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/kinematics_plugin_loader/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/robot_model_loader/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/constraint_sampler_manager_loader/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/planning_pipeline/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/planning_scene_monitor/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/trajectory_execution_manager/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/plan_execution/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning/collision_plugin_loader/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/move_group/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/manipulation/pick_place/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/manipulation/move_group_pick_place_capability/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/robot_interaction/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/warehouse/warehouse/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning_interface/py_bindings_tools/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning_interface/common_planning_interface_objects/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning_interface/planning_scene_interface/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit/moveit_ros/planning_interface/move_group_interface/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/rviz_visual_tools/include -I/home/dtrimoul/PR2-Kinetic-Xenial/src/moveit_visual_tools/include -I/opt/ros/kinetic/include -I/opt/ros/kinetic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp -I/usr/include/eigen3 -I/usr/include/sdformat-4.0 -I/usr/include/gazebo-7 -isystem /usr/include/ignition/math2 

