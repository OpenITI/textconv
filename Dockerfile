FROM ubuntu
LABEL maintainer="Raff Viglianti, OpenITI AOCP project"

RUN apt-get update &&\
    apt-get install -y python3.6 python3-pip

WORKDIR /var/textconv

COPY . .

RUN pip3 install -r requirements.txt
RUN pip3 install gunicorn

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "textconv.app"]