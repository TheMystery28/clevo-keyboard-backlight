#!/usr/bin/env bash

INSTALL_DIR=/usr/lib/kb_light_stats
CONFIG_DIR=/etc/kb_light_stats

# Create directories
mkdir -p $INSTALL_DIR
mkdir -p $INSTALL_DIR/stats
mkdir -p $INSTALL_DIR/TuxedoWmi
mkdir -p $CONFIG_DIR

# Copy files
cp -v ./kb_light_stats.conf $INSTALL_DIR/kb_light_stats.conf.template
cp -v ./kb_light_stats.service /usr/lib/systemd/system/
cp -v ./*.py $INSTALL_DIR/
cp -vR ./stats/*.py $INSTALL_DIR/stats/
cp -vR ./TuxedoWmi/*.py $INSTALL_DIR/TuxedoWmi/

# Copy config file if it doesn't exist
if [ ! -f "$CONFIG_DIR/kb_light_stats.conf" ]; then
    cp -v ./kb_light_stats.conf $CONFIG_DIR/kb_light_stats.conf    
fi
