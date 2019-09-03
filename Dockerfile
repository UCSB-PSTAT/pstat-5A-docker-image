FROM jupyter/scipy-notebook:7d427e7a4dde

LABEL maintainer="Patrick Windmiller <sysadmin@pstat.ucsb.edu>"

USER ${NB_USER}

RUN conda update -n base conda && \
    conda update -y numpy && \
    conda install -y quandl && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER root
  
RUN apt-get update && \
    apt-get install -y zip unzip && \
