ARG VERSION=3.8

FROM alpine:$VERSION

ARG UN=dev
ARG DOTS=https://github.com/beingbrown/dev_base.git
ARG TOOLS=""

RUN apk update && \
    apk upgrade && \
    apk add bash \
            vim \
            git \
            git-perl \
            $TOOLS

ENV HOME /home/$UN
RUN adduser -D -h $HOME -s /bin/bash $UN
RUN chown -R $UN:$UN $HOME

USER $UN
WORKDIR $HOME

RUN git clone $DOTS dots
RUN ln -sv "dots/git/.gitconfig" $HOME
