FROM csanchez/jenkins-swarm-slave:1.22

MAINTAINER Pavel Gopanenko <pgopanenko@gmail.com>

USER root

RUN apt-get update && apt-get install -y php5 php5-curl php5-apcu php5-cli php5-json php5-mysql php5-xdebug php5-dev php-pear mercurial git make gcc
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/tmp && /bin/mv -f /tmp/composer.phar /usr/local/bin/composer
