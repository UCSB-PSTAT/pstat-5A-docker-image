FROM jupyter/scipy-notebook:7d427e7a4dde

LABEL maintainer="Patrick Windmiller <sysadmin@pstat.ucsb.edu>"

RUN conda update -n base conda && \
    conda update -y numpy && \
    conda install -y quandl && \

USER root
  
RUN apt-get update && \
    apt-get install -y zip unzip && \
    
USER ${NB_USER}
