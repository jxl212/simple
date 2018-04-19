FROM python:latest

<<<<<<< HEAD
RUN pip install pip --upgrade
=======
RUN pip install --upgrade pip
>>>>>>> 0ff16aaac18281ae4456ae31fb6b4be2dc54ec83

COPY app/ /app
WORKDIR /app

EXPOSE 5000

RUN pip install -r requirements.txt

ENTRYPOINT ["python","app.py"]
CMD ["app.py"]
