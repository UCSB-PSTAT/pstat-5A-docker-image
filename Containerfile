# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ucsb/scipy-base:latest

LABEL maintainer="LSIT Systems <lsitops@lsit.ucsb.edu>"

USER root

RUN pip install datascience

# Install spaCy, pandas, scikit-learn packages
RUN conda install -c conda-forge hypothesis mock spacy && \
    conda clean -tipsy 

USER $NB_UID
