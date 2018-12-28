#!/bin/sh
set -e

apt-get install -y supervisor
cp entrypoint/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
cp entrypoint/supervisord.conf.template /etc/supervisor/conf.d/supervisord.conf.template
sed -i '/#!\/usr\/bin\/python.*/c\#!/usr/bin/python2' /usr/bin/supervisord
sed -i '/#!\/usr\/bin\/python.*/c\#!/usr/bin/python2' /usr/bin/supervisorctl

# TODO: move to copy_env_variables.sh
cp entrypoint/init.sh /etc/profile.d/
chmod a+x /etc/profile.d/init.sh

cp entrypoint/entrypoint.sh /entrypoint.sh
chmod 0755 /entrypoint.sh

cp entrypoint/update_user_config /usr/local/bin
chmod 0755 /usr/local/bin/update_user_config
