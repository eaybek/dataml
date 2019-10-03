FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/dataml/dataml/ /root/packages/dataml/
WORKDIR /root/packages/dataml
RUN pip3 install /root/packages/dataml

CMD ["python3","test/dataml.py"]


