FROM nvcr.io/nvidia/cuda:9.0-cudnn7.1-devel-ubuntu16.04

COPY . /tmp/common
RUN cd /tmp/common && ./install

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

WORKDIR "/workspace"
RUN chmod 0777 /workspace

EXPOSE 22
EXPOSE 8888

ENTRYPOINT ["/usr/bin/supervisord"]