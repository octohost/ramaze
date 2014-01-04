FROM octohost/ruby-2.1

ADD . /srv/www
RUN cd /srv/www; bundle install

EXPOSE 7000

WORKDIR /srv/www

CMD bundle exec rake ramaze:start