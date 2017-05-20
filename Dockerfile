FROM pizzafactory/che-stack-ubuntu_jre
MAINTAINER Masaki Muranaka <monaka@monami-ya.com>

ENV DEBIAN_FRONTEND noninteractive

USER root

RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:team-gcc-arm-embedded/ppa && \
    apt-get -y remove software-properties-common && \
    apt-get -y update && \
    apt-get -y install build-essential \
        gcc-arm-none-eabi=15:4.9.3+svn231177-1 \
        u-boot-tools \
        libboost1.58-all-dev && \
    apt-get -y autoremove && apt-get -y autoclean

USER user
