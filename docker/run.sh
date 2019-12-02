#!/bin/bash

# Defaults
XSOCK=/tmp/.X11-unix
XAUTH=/home/$USER/.Xauthority
HOST_WS_DIR=/media/govvijay/data/catkin_ws/
TARGET_WS_DIR=/home/govvijay/catkin_ws/
HOST_CARLA_DIR=/media/govvijay/data/carla/carla_0_9_6/
TARGET_CARLA_DIR=/home/govvijay/carla/
HOST_DATA_DIR=/home/govvijay/Dropbox/carla_data/datasets/
TARGET_DATA_DIR=/home/govvijay/datasets
DOCKER_IMG="carla-ros-bridge:latest"
CARLA_VERSION="0.9.6"

docker run \
    --gpus all\
    -it \
    --volume=$XSOCK:$XSOCK:rw \
    --volume=$XAUTH:$XAUTH:rw \
    --volume=$HOST_WS_DIR:$TARGET_WS_DIR:rw \
    --volume=$HOST_CARLA_DIR:$TARGET_CARLA_DIR:rw \
    --volume=$HOST_DATA_DIR:$TARGET_DATA_DIR:rw \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY=${DISPLAY}" \
    --env="PYTHONPATH=/home/govvijay/carla/PythonAPI/carla/dist/carla-$CARLA_VERSION-py2.7-linux-x86_64.egg:/home/govvijay/carla/PythonAPI" \
    -u govvijay \
    --privileged -v /dev/bus/usb:/dev/bus/usb \
    --net=host \
    $DOCKER_IMG
