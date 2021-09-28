FROM  ubuntu:latest
LABEL maintainer="Davidson"

COPY . /opt/test-circleci
WORKDIR /opt/test-circleci

RUN export NODE_ENV=production \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive && \
  apt-get install -y nodejs && \
  apt-get install -y  npm && \
  aapt-get install -y git  && \
  apt-get install -y docker-ce && \
  service docker start

ENTRYPOINT ["./entrypoint.sh"]
CMD ["start"]
