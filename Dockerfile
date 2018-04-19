FROM python:latest

<<<<<<< HEAD
RUN pip install pip --upgrade
=======
RUN pip install --upgrade pip
>>>>>>> e89b25d83c4c84b77bdf4b850ae127c4bebe90e8

COPY app/ /app
WORKDIR /app

EXPOSE 5000

RUN pip install -r requirements.txt

ENTRYPOINT ["python","app.py"]
CMD ["app.py"]
