FROM  ubuntu:latest
LABEL maintainer="Davidson"

COPY . /opt/test-circleci
WORKDIR /opt/test-circleci

RUN export NODE_ENV=production \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive && \
  apt-get install -yq nodejs && \
  apt-get install -yq  npm && \
  aapt-get install -yq git  && \
  apt-get install -yq docker-ce && \
  service docker start

ENTRYPOINT ["./entrypoint.sh"]
CMD ["start"]
