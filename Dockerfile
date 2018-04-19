FROM python:latest

RUN pip install pip --upgrade

COPY app/ /app
WORKDIR /app
EXPOSE 5000

RUN pip install -r requirements.txt

ENTRYPOINT ["python","app.py"]
CMD ["app.py"]
