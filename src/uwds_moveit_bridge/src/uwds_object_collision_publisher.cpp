#include "uwds_moveit_bridge/uwds_object_collision_publisher.h"

namespace uwds_moveit_bridge
{
  void UwdsObjectCollisionPublisher::onInit()
  {

    pub_ = getNodeHandle().advertise<moveit_custom_msgs::CollisionObjectArray>("uwds_moveit_objects", 1000);
    uwds::ReconfigurableClient::onInit();
    // Not after due to default configuration that happend in the init ;)


  }

  void UwdsObjectCollisionPublisher::onChanges(const std::string& world,
                         const std_msgs::Header& header,
                         const Invalidations& invalidations)
  {
        // Here goes the code that is executed on every changes
    moveit_custom_msgs::CollisionObjectArray objects;
    for (const auto& node_id : invalidations.node_ids_updated)
    {
      uwds_msgs::Node node = this->worlds()[world].scene().nodes()[node_id];
      if(node.type == uwds::MESH)
      {
        //build a new moveit object
        moveit_msgs::CollisionObject object;
        //Modifier le header pour que la frame soit celle de l'object world/name
        object.header.frame_id = world + "/" + node.name;
        object.id = node.id;
        for (const auto mesh_id : getNodeMeshes(node)) {
          shape_msgs::Mesh mesh;
          mesh.vertices = meshes()[mesh_id].vertices;
          //copy des triangles
          for(const auto triangle : mesh.triangles) {
            shape_msgs::MeshTriangle tri;
            tri.vertex_indices = triangle.vertex_indices;
            mesh.triangles.push_back(tri);
          }

          object.meshes.push_back(mesh);
          object.mesh_poses.push_back(geometry_msgs::Pose());
        }
        object.operation = object.ADD;
        objects.data.push_back(object);
      }
    }
    //publish the object array
    pub_.publish(objects);
  }

  void UwdsObjectCollisionPublisher::onReconfigure(const std::vector<std::string>& new_input_worlds)
  {
    // Here goes the code that is executed on each reconfiguration
    // reset the qsr traces in the server ?
  }
}

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(uwds_moveit_bridge::UwdsObjectCollisionPublisher, nodelet::Nodelet)