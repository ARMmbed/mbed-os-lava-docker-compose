ARG image=lavasoftware/lava-server:latest
FROM ${image}

ARG extra_packages=""
RUN apt -q update
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y install ${extra_packages} python3-django-environ git

COPY ./config_server.sh /root/config_server.sh

ENTRYPOINT ["/root/config_server.sh"]
