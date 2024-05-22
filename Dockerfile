FROM inseefrlab/onyxia-python-minimal:py3.11.6

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

ENTRYPOINT ["mlflow", "server", "--app-name", "basic-auth"]
