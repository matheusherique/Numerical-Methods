FROM continuumio/anaconda3:latest

RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN /opt/conda/bin/conda install -c menpo opencv -y --quiet
RUN mkdir -p /var/app/src
COPY ./src /var/app/src
WORKDIR /var/app

EXPOSE 8888
