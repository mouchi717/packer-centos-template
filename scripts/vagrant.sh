#!/bin/bash

# variant
VAGRANT_USER="vagrant"
VAGRANT_GROUP="vagrant"
VAGRANT_HOME=/home/${VAGRANT_USER}
VAGRANT_KEY_URL="https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub"

# Installing vagrant keys
echo "Installing Vagrant User Keys"
mkdir -pm 700 ${VAGRANT_HOME}/.ssh
curl -L ${VAGRANT_KEY_URL} -o ${VAGRANT_HOME}/.ssh/authorized_keys
chmod 0600 ${VAGRANT_HOME}/.ssh/authorized_keys
chown -R ${VAGRANT_USER}:${VAGRANT_GROUP} ${VAGRANT_HOME}/.ssh
