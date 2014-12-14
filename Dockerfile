FROM openaustralia/morph-ruby

RUN bash -l -c "gem install pry --no-rdoc --no-ri"
WORKDIR /repo
CMD ["ruby", "-r/usr/local/lib/prerun.rb", "scraper.rb"]
COPY ./docker-entrypoint /
ENTRYPOINT ["/docker-entrypoint"]
