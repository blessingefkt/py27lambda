FROM amazonlinux:latest
RUN yum -y install git \
    python27 \
    python-pip \
    zip \
    && yum clean all
RUN pip install --upgrade pip \
    && pip install boto3 \
    && pip install pillow