FROM centos:7 as rpm_centos7

RUN mkdir -p /extra/pip && \
    yum install -y unzip wget

RUN wget https://files.pythonhosted.org/packages/27/d6/003e593296a85fd6ed616ed962795b2f87709c3eee2bca4f6d0fe55c6d00/wheel-0.37.1-py2.py3-none-any.whl -O /extra/pip/wheel-0.37.1-py2.py3-none-any.whl && \
    wget https://files.pythonhosted.org/packages/b2/40/4e00501c204b457f10fe410da0c97537214b2265247bc9a5bc6edd55b9e4/setuptools-44.1.1.zip -O /extra/pip/setuptools-44.1.1.zip && \
    wget https://files.pythonhosted.org/packages/53/7f/55721ad0501a9076dbc354cc8c63ffc2d6f1ef360f49ad0fbcce19d68538/pip-20.3.4.tar.gz -O /extra/pip/pip-20.3.4.tar.gz

RUN cd /extra/pip && \
unzip /extra/pip/setuptools-44.1.1.zip && \
tar zxf pip-20.3.4.tar.gz && \
cd /extra/pip/setuptools-44.1.1 && \
python setup.py install && \
cd /extra/pip/pip-20.3.4 && \
python setup.py install && \
pip install /extra/pip/wheel-0.37.1-py2.py3-none-any.whl

RUN mkdir -p /extra/ansible && pip download -d /extra/ansible ansible

FROM alpine:3.12

RUN mkdir -p /extra
COPY --from=rpm_centos7 /extra /extra
# COPY --from=rpm_centos7 /usr/local/nginx/s/extra/nginx /extra/nginx/

CMD [ "sleep", "360000000" ]
