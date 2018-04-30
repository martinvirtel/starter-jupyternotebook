FROM jupyter/scipy-notebook



RUN pip install --no-cache-dir --upgrade pip && \
    conda install --yes altair


COPY requirements.txt /var/lib/apt/lists/partial/requirements.txt 

USER root

RUN apt-get update \
    && apt-get -y install libsnappy-dev

USER $NB_UID

COPY requirements.txt requirements.txt 


RUN pip install --no-cache-dir -r requirements.txt 




