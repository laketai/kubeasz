FROM centos:7 as rpm_centos7

RUN mkdir -p /extra/pip && \
    yum install -y unzip wget

RUN wget https://files.pythonhosted.org/packages/ed/46/e298a50dde405e1c202e316fa6a3015ff9288423661d7ea5e8f22f589071/wheel-0.36.2.tar.gz -O /extra/pip/wheel-0.36.2.tar.gz && \
    wget https://files.pythonhosted.org/packages/b2/40/4e00501c204b457f10fe410da0c97537214b2265247bc9a5bc6edd55b9e4/setuptools-44.1.1.zip -O /extra/pip/setuptools-44.1.1.zip && \
    wget https://files.pythonhosted.org/packages/53/7f/55721ad0501a9076dbc354cc8c63ffc2d6f1ef360f49ad0fbcce19d68538/pip-20.3.4.tar.gz -O /extra/pip/pip-20.3.4.tar.gz

RUN cd /extra/pip && \
unzip /extra/pip/setuptools-44.1.1.zip && \
tar zxf pip-20.3.4.tar.gz && \
cd /extra/pip/setuptools-44.1.1 && \
python setup.py install && \
cd /extra/pip/pip-20.3.4 && \
python setup.py install && \
pip install /extra/pip/wheel-0.36.2.tar.gz

RUN mkdir -p /extra/ansible && pip download -d /extra/ansible ansible

FROM alpine:3.12

RUN mkdir -p /extra
COPY --from=rpm_centos7 /extra /extra
# COPY --from=rpm_centos7 /usr/local/nginx/s/extra/nginx /extra/nginx/

CMD [ "sleep", "360000000" ]
