FROM python:3.6.6

RUN apt-get install build-essential libssl-dev libffi-dev python3-dev

RUN pip install cryptography

ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

EXPOSE 9001
CMD python manage.py runserver 0.0.0.0:9001
