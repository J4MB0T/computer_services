FROM jekyll/jekyll:4.2.0

WORKDIR /srv/jekyll
COPY . .

RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--force_polling", "--livereload", "--host", "0.0.0.0"]
