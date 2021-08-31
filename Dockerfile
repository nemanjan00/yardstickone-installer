FROM debian:stretch

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt install -y python-usb libusb-1.0.0 make sdcc fish git python-pip python3 python3-pip

RUN pip install future

RUN pip3 install pyserial==3.4

RUN chsh -s /usr/bin/fish

COPY build.sh /tmp

WORKDIR /tmp

RUN chmod +x /tmp/build.sh
