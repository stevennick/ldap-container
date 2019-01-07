#!/bin/sh
set -e

# apt-get install -y python
if [ -f '/usr/local/bin/pip' ] ; then
	# python2 -m pip install --upgrade pip
	echo "*** pip detected, skip installation."
else	
	apt-get install -y python-pip
	python2 -m pip install --upgrade pip
fi

# install jupyter
if [ -f '/usr/local/bin/jupyter' ] ; then
	# python2 -m pip install --upgrade pip
	echo "*** jupyter detected, skip installation."
	mkdir -p /root/.jupyter/
else	
	python2 -m pip install --upgrade pip
	python2 -m pip install jupyter
	jupyter notebook --generate-config --port 8888
fi
rm -fr /root/.cache

# Set up our notebook config.
cp jupyter/jupyter_notebook_config.py /root/.jupyter/
mkdir -p /etc/skel/.jupyter/
cp jupyter/jupyter_notebook_config.py /etc/skel/.jupyter/
mkdir -p /etc/jupyter/
cp jupyter/jupyter_notebook_config.py /etc/jupyter/

cp jupyter/jupyter_token.py /usr/local/bin
chmod a+x /usr/local/bin/jupyter_token.py

cp jupyter/jupyter_token /usr/local/bin
chmod a+x /usr/local/bin/jupyter_token

cp jupyter/jupyter_init.sh /usr/local/bin
chmod a+x /usr/local/bin/jupyter_init.sh


mkdir -p /workspace

# Copy sample notebooks.
cp -r jupyter/notebooks/* /workspace

chown -R 10000:10000 /workspace

cp jupyter/run_jupyter.sh /
# Jupyter has issues with being run directly:
#   https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
chmod a+x /run_jupyter.sh