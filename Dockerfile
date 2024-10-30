FROM python:3.9

COPY ./requirements.txt /ws/requirements.txt

WORKDIR /ws

RUN pip install -r requirements.txt

COPY ./webapp/ /ws

ENTRYPOINT [ "python3" ]

CMD ["app.py"]