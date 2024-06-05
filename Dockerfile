from ubuntu：22.04
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clear && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

RUN echo 'root:root' | chpasswd

EXPOSE 22

CMD ["usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
