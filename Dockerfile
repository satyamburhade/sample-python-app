FROM registry.access.redhat.com/ubi9/python-311:1-7
# Python docker images: https://github.com/docker-library/docs/tree/master/python/

USER root

# Copy the src
RUN mkdir /tmp/src
ADD src/ /tmp/src/
RUN ls /tmp/src/
# Install python dependencies
RUN python3 --version
RUN pip3 install --upgrade pip
#RUN pip install --no-cache-dir -r /tmp/src/requirements.txt
#RUN pip3 install --no-cache-dir -r /app/requirements.txt
#RUN pip3 list --format=columns

RUN /usr/libexec/s2i/assemble
#RUN chown -R 1001:0 ${APP_ROOT} && fix-permissions ${APP_ROOT} -P
#USER 1001
#CMD /usr/libexec/s2i/run
