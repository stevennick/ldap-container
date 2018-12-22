FROM nvcr.io/nvidia/tensorrt:18.08-py2

RUN chown root:root /usr

COPY . /tmp/common
RUN cd /tmp/common && ./install

RUN chown 1000:1000 /usr

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

WORKDIR "/workspace"
RUN chmod 0777 /workspace

EXPOSE 22
EXPOSE 8888

ENTRYPOINT ["/usr/bin/supervisord"]