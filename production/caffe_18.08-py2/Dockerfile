FROM nvcr.io/nvidia/caffe:18.08-py2

COPY . /tmp/common
RUN cd /tmp/common && ./install_caffe_18.08-py2

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

WORKDIR "/workspace"
RUN chmod 0777 /workspace

EXPOSE 22
EXPOSE 8888

ENTRYPOINT ["/usr/bin/supervisord"]