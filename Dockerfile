FROM python:3.7.4-stretch
MAINTAINER evanwong <evan.wong.stu@gmail.com>
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y  python3-pip python3-pil python3-setuptools python3-numpy python3-yaml python3-requests ffmpeg libmagic-dev libwebp-dev nano screen
RUN pip3 install ehforwarderbot efb-telegram-master efb-wechat-slave
RUN mkdir -p /root/.ehforwarderbot/profiles/default/blueset.telegram
ADD config.yaml  /root/.ehforwarderbot/profiles/default/

CMD ehforwarderbot

