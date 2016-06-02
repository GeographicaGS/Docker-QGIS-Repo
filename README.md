# QGIS from Official Repositories Docker Image

This is a Docker image that installs the latest QGIS from the official repositories.

This image is fully inspired by that by Tim Sutton et al. at [kartoza/docker-qgis-desktop](https://github.com/kartoza/docker-qgis-desktop). All credits to them!

## Usage

This image is intended to be used on a one-shot pattern:

```Shell
xhost +

docker run --rm -v /yourhome/oranyother/local/:/home/ -v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY geographica/qgis-repo

xhost -
```

Please note that any host folder mounted as a volume in the container should be linked to __/home/__. The container will map any user and group UID this folder has to a container user and launch QGIS with that user to avoid permission issues.

## Not Done!

Some issues remain pending:

- create different Docker tags for different versions of both QGIS and Ubuntu. Currently is for trusty and latest (QGIS 2.14.3 Essen).
