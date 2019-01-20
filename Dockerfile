FROM alpine:3.8

ARG UN=user
ARG DOTS

RUN apk add vim git git-perl

ENV HOME /home/$UN
RUN adduser -D -h $HOME $UN
RUN chown -R $UN:$UN $HOME

USER $UN
WORKDIR $HOME

RUN git clone $DOTS dots
RUN ln -sv "dots/git/.gitconfig" $HOME
