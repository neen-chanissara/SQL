FROM python:3.8.1

RUN apt-get install gcc
ADD odbcinst.ini /etc/odbcinst.ini
RUN apt-get update
RUN apt-get install -y tdsodbc unixodbc-dev
RUN apt install unixodbc-bin -y
RUN apt-get clean -y

MAINTAINER thepnatee phojan

COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN pip freeze
ENTRYPOINT ["python"]
CMD ["app.py"]