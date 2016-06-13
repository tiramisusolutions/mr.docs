FROM alpine:3.4
MAINTAINER Sven Strack <sven@so36.net>

ENV PIP_CACHE /root/.cache

RUN apk --no-cache add bash python py-pip openssl ca-certificates aspell-en \
	enchant && \
    apk --no-cache add --virtual build-dependencies \
	python-dev build-base wget && \
    pip install --upgrade pip && \
    wget https://gist.githubusercontent.com/svx/eef4cda9b11df96a952347136821eaae/raw/cd6a5b3fbcd12b9751f9b6204bcbc9923cafb9db/mr.docs-requirements.txt && \
    pip install -r mr.docs-requirements.txt &&\
    rm mr.docs-requirements.txt &&\
    rm -rf $PIP_CACHE && \
    apk del build-dependencies && \
    apk --no-cache add make



VOLUME ["/build/docs"]


COPY conf /build/conf
COPY spelling_wordlist.txt /build/spelling_wordlist.txt
COPY Makefile /build/Makefile

WORKDIR /build

ENTRYPOINT ["make"]
