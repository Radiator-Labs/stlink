FROM dockcross/linux-armv7

ENV DEFAULT_DOCKCROSS_IMAGE stlink
RUN apt-get update
RUN apt-get install -y libusb-1.0-0 libusb-1.0-0-dev 