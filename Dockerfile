FROM ruby:3.0.2-alpine3.13

LABEL maintainer="Matheus M<mmacedo@icasei.com.br>"

ENV INSTALL_PATH /teste-backend

#RUN apk --update --upgrade add \
#      bash\
#      sqlite-dev\
#      build-base\
#      tzdata


RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile $INSTALL_PATH/
COPY Rakefile $INSTALL_PATH/


ADD . $INSTALL_PATH

RUN mkdir -p $INSTALL_PATH/tmp/pids


RUN chmod +x run.sh

EXPOSE 80/tcp
EXPOSE 80/udp

CMD ["./run.sh"]
