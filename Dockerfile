FROM python:2.7-slim

RUN pip install requests

RUN mkdir /workdir
WORKDIR /workdir

COPY slack_delete.py /workdir/slack_delete.py

CMD ["echo", "docker -it --rm run slack-delete  python slack_delete.py --days $DAYS --token $TOKEN"]