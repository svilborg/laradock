FROM phusion/baseimage:latest

MAINTAINER myself

RUN DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm


#
#--------------------------------------------------------------------------
# Software's Installation
#--------------------------------------------------------------------------
#

# Install "PHP Extentions", "libraries", "Software's"
RUN apt-get update && \
    apt-get install -y --allow-downgrades --allow-remove-essential \
        --allow-change-held-packages \
        sendmail

ADD set_host.sh /etc/set_host.sh

RUN chmod +x /etc/set_host.sh
RUN /etc/set_host.sh

RUN mkdir /etc/service/sendmail
ADD sendmail.sh /etc/service/sendmail/run

# CMD ["/etc/init.d/sendmail", "start"]	