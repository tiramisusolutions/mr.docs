FROM alpine:3.4
MAINTAINER Sven Strack <sven@so36.net>

ENV PIP_CACHE /root/.cache

RUN apk --no-cache add bash python py-pip openssl ca-certificates aspell-en \
	enchant && \
    apk --no-cache add --virtual build-dependencies \
	python-dev build-base && \
    pip install --upgrade pip && \
    pip install sphinx \
	pyenchant \
	sphinxcontrib-dashbuilder \
	sphinxcontrib.gist \
	sphinx-rtd-theme \
        sphinxcontrib-spelling \
	sphinxcontrib-osexample && \
    rm -rf $PIP_CACHE && \
    apk del build-dependencies && \
    apk --no-cache add make



#WORKDIR /usr/src/docs
VOLUME ["/build/docs"]


COPY conf /build/conf
COPY spelling_wordlist.txt /build/spelling_wordlist.txt
COPY Makefile /build/Makefile

WORKDIR /build

ENTRYPOINT ["make"]
