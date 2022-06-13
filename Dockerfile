
FROM openjdk:17-alpine

WORKDIR /work

RUN apk add xvfb libxrender libxtst libxi

COPY processing.tar.gz run.sh ./

RUN mkdir processing && \
    tar xf processing.tar.gz && \
    rm -r processing.tar.gz processing-4.0b8/java && \
    ln -s /opt/openjdk-17/ processing-4.0b8/java

COPY sketch /sketch

CMD ./run.sh
