---Urutan menjalankan program pingpong

catkin_make
source devel/setup.bash
roscore
rosrun turtlesim turtlesim_node
roslaunch iris pong.launch

---Urutan menjalankan program hit&respawn

catkin_make
source devel/setup.bash
roscore
rosrun turtlesim turtlesim_node
rosrun iris turtle_1
rosrun iris turtle_2

menjalankan WASD dari turtle_1
