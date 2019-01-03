FROM nvcr.io/nvidia/pytorch:18.10-py3

COPY . /tmp/common
RUN cd /tmp/common && ./install

RUN mkdir -p /etc/jupyter
COPY jupyter/jupyter_notebook_config.py /etc/jupyter

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

WORKDIR "/workspace"
RUN chmod 0777 /workspace

EXPOSE 22
EXPOSE 8888

ENTRYPOINT ["/usr/bin/supervisord"]