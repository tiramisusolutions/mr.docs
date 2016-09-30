FROM alpine:latest
MAINTAINER Sven Strack <sven@testthedocs.org>

ENV PIP_CACHE /root/.cache

RUN builddeps=' \
	python-dev \
	openssl-dev \
	py-pip \
	musl-dev \
	openssl-dev \
	libffi-dev \
	gcc \
	' \
	&& apk --no-cache add \
	ca-certificates \
	python \
	py-httplib2 \
	bash \
	make \
    aspell-en \
    enchant \
	$builddeps \
	&& pip install --upgrade pip \
	&& pip install \
		sphinx \
		sphinx-rtd-theme \
        sphinxcontrib-osexample \
        sphinxcontrib-spelling \
        sphinxcontrib.gist \
        pyenchant \
	&& apk del --purge $builddeps \
	&& rm -rf $PIP_CACHE

VOLUME ["/build/docs"]

COPY conf /build/conf
COPY spelling_wordlist.txt /build/spelling_wordlist.txt
COPY Makefile /build/Makefile
COPY templates /build/templates
COPY scripts /build/scripts

WORKDIR /build

ENTRYPOINT ["make"]

