FROM alpine:3.8

ARG UN=user

RUN apk add vim git git-perl

ENV HOME /home/$UN
RUN adduser -D -h $HOME $UN
RUN chown -R $UN:$UN $HOME

USER $UN
WORKDIR $HOME
