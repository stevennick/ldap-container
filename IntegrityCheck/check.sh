#!/bin/bash
# if [ -f '/usr/bin/curl' ] ; then
# 	echo "skip curl install"
# else
# 	apt-get update && apt-get install -y curl
# fi

# curl http://localhost/IntegrityCheck/IntegrityCheck.md5sum > IntegrityCheck.md5sum
md5sum -c /tmp/IntegrityCheck.md5sum