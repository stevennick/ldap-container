#!/bin/bash

if [ ! -z "${CREATOR_ACCOUNT}" ] ; then
	if [ ! -d "/home/${CREATOR_ACCOUNT}/.jupyter" ] ; then
	  mkdir -p "/home/${CREATOR_ACCOUNT}/.jupyter"
	fi

	if [ ! -f "/home/${CREATOR_ACCOUNT}/.jupyter/jupyter_notebook_config.py" ] ; then
	  cp /etc/skel/.jupyter/jupyter_notebook_config.py "/home/${CREATOR_ACCOUNT}/.jupyter/"
	fi

	chown -R ${CREATOR_ACCOUNT}:slurm /home/${CREATOR_ACCOUNT}/.jupyter
fi
exit 0;