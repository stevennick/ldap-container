#!/bin/sh
set -e

# Install sshd
apt-get install -y openssh-server openssh-client sudo
mkdir -p /var/run/sshd
echo "ClientAliveInterval 60" >> /etc/ssh/sshd_config
echo "ClientAliveCountMax 60" >> /etc/ssh/sshd_config


# Install ldap access
DEBIAN_FRONTEND=noninteractive apt-get install -y libnss-ldap libpam-ldapd auth-client-config ldap-utils nscd nslcd

service nscd stop
# Perform necessarily changes for LDAP integration
cp ldap_access/pam.d/* /etc/pam.d/
cp ldap_access/nslcd.conf /etc/nslcd.conf
cp ldap_access/ldap-auth-config /etc/auth-client-config/profile.d/ldap-auth-config
cp ldap_access/ldap.conf /etc/ldap.conf
cp ldap_access/ldap.secret /etc/ldap.secret
chmod 600 /etc/ldap.secret
#sed -i '/#!\/usr\/bin\/python.*/c\#!/usr/bin/python2' /usr/sbin/auth-client-config

python2 /usr/sbin/auth-client-config -t nss -p lac_ldap

cp ldap_access/limit_access /usr/local/bin
chmod a+x /usr/local/bin/limit_access

# Assign slurm as admin(sudo)
echo "%slurm  ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/slurm
