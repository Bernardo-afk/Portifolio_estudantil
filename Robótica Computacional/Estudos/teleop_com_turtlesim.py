form launch import LaunchDescription
import launch_ros.actions

def generate_launch_description():
    return LaunchDescription([



        launch_ros.action.Node(
            namespace="turtlesim1",package='turtlesim', executable='turltesim_node',output='screen'),
            launch_ros.action.Node(
                namespace= "turltesim" , package 'turtlesim', executable='turtle_teleop_key',output ='teleop '),



            )
        )
    ]
    )



    ros2 topic pub --once turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 4.0, y : 3.0, z: 10.0}, angular: {x: 0.0, y: 3.0, z: 0.0}}"
  
ros2 topic pub --once turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -4.0, y : 0.0, z: 0.0}, angular: {x: 1.0, y: 2.0, z: 6.0}}"

ros2 topic pub --once turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 4.0, y : 0.0, z: 0.0}, angular: {x: 1.0, y: 2.0, z: 6.0}}"
