FROM ros:melodic

# install ros package
RUN apt-get update && apt-get install -y \
    gazebo9 \
    ros-${ROS_DISTRO}-gazebo-ros-pkgs \
    ros-${ROS_DISTRO}-gazebo-ros-control \
    ros-${ROS_DISTRO}-uuv-assistants && \
    rm -rf /var/lib/apt/lists/*

COPY . /

ENTRYPOINT ["/runner/runner.sh"]
