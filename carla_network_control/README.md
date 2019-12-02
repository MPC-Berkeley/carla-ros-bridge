# Carla Network Control

The node `carla_network_control` is modified from the provided `carla_manual_control` package.
It runs networks for scene understanding (semantic segmentation, etc.) and policy networks, along with
a safety MPC implementation.

## Networks Used
* semantic_segmentation: https://github.com/oandrienko/fast-semantic-segmentation/