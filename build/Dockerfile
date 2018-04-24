FROM jupyter/scipy-notebook

COPY requirements.txt requirements.txt 

RUN pip install --no-cache-dir --upgrade pip 

RUN pip install --no-cache-dir -r requirements.txt && \
    conda install --yes altair




