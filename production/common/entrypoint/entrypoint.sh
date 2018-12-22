set -xe
# service nscd stop
/usr/local/bin/limit_access
service nslcd start
/usr/sbin/sshd -D
