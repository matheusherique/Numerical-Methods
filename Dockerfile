FROM continuumio/anaconda3:latest

RUN /opt/conda/bin/conda update conda
RUN /opt/conda/bin/conda create -n caffe python=3.7
RUN /opt/conda/bin/conda init bash
RUN /opt/conda/bin/activate caffe
RUN /opt/conda/bin/conda install -c menpo opencv caffe jupyter  -y --quiet
RUN mkdir -p /var/app/src
COPY ./src /var/app/src
WORKDIR /var/app

EXPOSE 8888
