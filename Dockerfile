FROM ubuntu:noble AS base
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y sudo software-properties-common curl git build-essential && \
  apt-get clean autoclean && \
  apt-get autoremove --yes

FROM base AS main
RUN adduser ubuntu sudo && \
  echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir /home/ubuntu/dotfiles
COPY . /home/ubuntu/dotfiles
RUN chown -R ubuntu:ubuntu /home/ubuntu/dotfiles

FROM main
USER ubuntu
WORKDIR /home/ubuntu
CMD [ "/bin/bash" ]
