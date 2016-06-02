#!/bin/bash

USER_ID=`ls -lahn / | grep home | awk {'print $3'}`
GROUP_ID=`ls -lahn / | grep home | awk {'print $4'}`

groupadd -g $GROUP_ID qgis
useradd --shell /bin/bash --home /home --uid $USER_ID --gid $GROUP_ID qgis 
export LD_LIBRARY_PATH=/usr/lib
su qgis -c "/usr/bin/qgis"
