FROM nvcr.io/nvidia/digits:18.10

COPY . /tmp/common
RUN cd /tmp/common && ./install-digits_18.10

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

WORKDIR "/workspace"
RUN chmod 0777 /workspace
COPY digits_18.10/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY digits_18.10/supervisord.conf.template /etc/supervisor/conf.d/supervisord.conf.template


EXPOSE 22
EXPOSE 8888
EXPOSE 5000

ENTRYPOINT ["/usr/bin/supervisord"]