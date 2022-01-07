# Use the official openwrt base image
# https://hub.docker.com/
FROM openwrtorg/rootfs

# Copy local code to the container image.
ENV APP_HOME .
WORKDIR $APP_HOME

# Copy Dockerfile into image
ADD Dockerfile .
ADD start.sh .
ADD start.py .
ADD requirements.txt .

# Update openwrt package manager
RUN mkdir /var/lock
RUN opkg update
RUN opkg install python3
RUN opkg install python3-pip

# Upgrade PIP to latest
RUN python3 -m pip install --upgrade pip

# Install python packages ( from requirements.txt)
RUN pip install -r requirements.txt

# Install bash shell
RUN opkg install bash

CMD ["/start.sh"]
