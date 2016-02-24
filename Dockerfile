FROM alpine:3.3
MAINTAINER Sven Strack <sven@so36.net>

RUN apk update && apk add --no-cache \
	python \
	python-dev \
	build-base \
        ca-certificates \
        aspell-en \
	py-pip \
	enchant \
	&& pip install --upgrade pip \
	&& pip install sphinx \
	pyenchant \
	sphinxcontrib-dashbuilder \
	sphinxcontrib.gist \
	sphinx-rtd-theme \
        sphinxcontrib-spelling \
	sphinxcontrib-osexample \
        && apk del build-base \
        && apk add --no-cache make \
        && rm -rf /var/cache/apk/* \


VOLUME ["/build/docs"]

WORKDIR /build

COPY conf conf
COPY spelling_wordlist.txt spelling_wordlist.txt
COPY Makefile /build/Makefile

ENTRYPOINT ["make"]
