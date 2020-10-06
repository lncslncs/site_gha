default: install

help:
	@egrep '(^\S)|^$$' Makefile

install:
	bundle config set --local path vendor/bundle
	bundle install

upgrade:
	bundle update

s serve:
	bundle exec jekyll serve --source site_gha --destination build/ --livereload --trace
