#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"

echo $@

roslaunch `dirname "$0"`/runner.launch world:="$1" timeout:=$2
cp ~/.gazebo/log/**/gzserver/* `dirname "$1"`

