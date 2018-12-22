FROM ubuntu:16.04

RUN apt-get update && \
	apt-get install -y python python-pip

COPY . /tmp/common
RUN cd /tmp/common && ./install

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

WORKDIR "/workspace"
RUN chmod 0777 /workspace

EXPOSE 22
EXPOSE 5000
EXPOSE 8888

ENTRYPOINT ["/usr/bin/supervisord"]