FROM nvcr.io/nvidia/inferenceserver:18.08-py2

RUN apt-get update && \
	apt-get install -y python3 python3-pip

RUN mkdir -p /workspace

COPY . /tmp/common
RUN cd /tmp/common && ./install

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

COPY tensorrtserver/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR "/workspace"
RUN chmod 0777 /workspace

EXPOSE 22

# TensroRT 
EXPOSE 8000
EXPOSE 8001
EXPOSE 8002

# Jupyter
EXPOSE 8888

ENTRYPOINT ["/usr/bin/supervisord"]
