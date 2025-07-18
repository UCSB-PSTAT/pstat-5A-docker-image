# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ucsb/scipy-base:latest

LABEL maintainer="LSIT Systems <lsitops@lsit.ucsb.edu>"

USER root

RUN pip install datascience \
    ipywidgets \
    ml-datasets \
    openpyxl \
    otter-grader \
    plotly \
    pytest \
    scikit-learn \
    seaborn \
    statsmodels 

# Install spaCy, pandas, scikit-learn packages
RUN mamba install -c conda-forge hypothesis mock spacy && \
    mamba clean --all

USER $NB_UID
