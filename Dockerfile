FROM python:3.6-buster

RUN apt update -y && apt install -y ffmpeg
RUN pip3 install youtube-dl requests

COPY recordurbate /recordurbate
WORKDIR /recordurbate
CMD ["python", "Recordurbate.py"]