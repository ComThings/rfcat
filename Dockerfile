FROM python:3.9.10

WORKDIR /pandwarf/rfcat
COPY . .
RUN apt update && apt install -y usbutils ffmpeg && pip install pipenv
RUN pipenv install --system

CMD [ "bash" ]
