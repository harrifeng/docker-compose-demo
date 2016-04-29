FROM python:2.7
ENV http_proxy http://proxy.sin.sap.corp:8080
ENV https_proxy http://proxy.sin.sap.corp:8080

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD python app.py
