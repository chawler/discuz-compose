FROM webdevops/php-apache:7.1

LABEL maintainer "wdzheng@wind.com.cn"

ARG WORK='/usr/local/src'
ARG VERSION='3.4'

RUN apt-get install git -y && \
    git clone https://github.com/chawler/DiscuzX.git $WORK/discuzx-$VERSION
WORKDIR $WORK/discuzx-$VERSION

RUN chmod -R 777 .
#
# EXPOSE 80
# EXPOSE 443
#
# COPY run.sh ./
# CMD ./run.sh
