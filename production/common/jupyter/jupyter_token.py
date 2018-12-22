#!/usr/bin/env python
import os
import socket
import hashlib

m = hashlib.md5()
name = socket.gethostname().encode('utf-8')
m.update(name)
token = m.hexdigest()
# print("Machine ID: " + name)
print("Jupyter access token: " + token)