FROM alpine:3.8

RUN apk add vim git

ENV HOME /home/user
RUN adduser -D -h $HOME user
RUN chown -R user:user $HOME

USER user
WORKDIR $HOME
