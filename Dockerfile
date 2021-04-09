FROM python:3.8-slim

RUN pip install flask

WORKDIR /app
ADD app.py .

CMD [ "python","app.py" ]