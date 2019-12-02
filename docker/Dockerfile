ARG CARLA_VERSION='0.9.6'
ARG CARLA_BUILD=''

FROM carlasim/carla:$CARLA_VERSION$CARLA_BUILD as carla

FROM ros_env:latest

RUN sudo apt-get update \
	&& sudo  apt-get install -y libpng16-16  ros-kinetic-ackermann-msgs  ros-kinetic-derived-object-msgs ros-kinetic-tf ros-kinetic-cv-bridge --no-install-recommends \
	&& sudo rm -rf /var/lib/apt/lists/*

ARG CARLA_VERSION
ENV PYTHONPATH=/home/govvijay/carla/PythonAPI/carla/dist/carla-$CARLA_VERSION-py2.7-linux-x86_64.egg:/home/govvijay/carla/PythonAPI


#COPY --chown=govvijay /home/govvijay/carla/carla_0_9_6/PythonAPI/ /home/govvijay/carla/PythonAPI

#COPY --chown=govvijay carla_ackermann_control /opt/carla-ros-bridge/src/carla_ackermann_control
#COPY  --chown=govvijay carla_ros_bridge /opt/carla-ros-bridge/src/carla_ros_bridge
#COPY carla_ros_bridge_lifecycle /opt/carla-ros-bridge/src/carla_ros_bridge_lifecycle

#RUN /bin/bash -c 'source /opt/ros/kinetic/setup.bash; cd  /home/govvijay/carla-ros-bridge; catkin_make -DCMAKE_BUILD_TYPE=Release install'

# replace entrypoint
#COPY ./docker/content/ros_entrypoint.sh /

#CMD ["roslaunch", "carla_ros_bridge", "carla_ros_bridge.launch"]
