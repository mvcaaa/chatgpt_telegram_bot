FROM python:3.11.2-slim-bullseye

ENV PYTHONFAULTHANDLER=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONHASHSEED=random
ENV PYTHONDONTWRITEBYTECODE 1
ENV PIP_NO_CACHE_DIR=off
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV PIP_DEFAULT_TIMEOUT=100

RUN apt-get update
RUN apt-get install -y build-essential ffmpeg

RUN mkdir -p /code
ADD . /code
WORKDIR /code

RUN pip3 install -r requirements.txt

CMD ["bash"]
