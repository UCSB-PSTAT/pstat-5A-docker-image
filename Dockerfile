# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Patrick Windmiller <sysadmin@pstat.ucsb.edu>"

USER $NB_UID

RUN pip install datascience

# Install spaCy, pandas, scikit-learn packages
RUN conda install -c conda-forge spacy && \
    conda install --quiet -y pandas && \
    conda install --quiet -y scikit-learn && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
