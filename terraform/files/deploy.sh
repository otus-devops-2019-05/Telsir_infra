#!/bin/bash
set -e

APP_DIR=${1:-$HOME}

git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install

sudo mv /tmp/puma.service.j2 /etc/systemd/system/puma.service.j2
sudo systemctl start puma
sudo systemctl enable puma