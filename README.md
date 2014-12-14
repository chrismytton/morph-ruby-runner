# Morph.io ruby runner

Docker image for testing ruby [morph.io](https://morph.io) scrapers in the same environment that they run in on the site.

This basically just extends the morph-ruby base image with some shortcuts so there is less to type.

## Usage

Go into a directory that contains a `scraper.rb` file, then run the docker image, mounting the current directory as `/repo` in the docker container.

```
cd path-to-ruby-scraper
docker run -it --rm -v "$(pwd)":/repo hecticjeff/morph-ruby-runner
```

Then you should have the data.sqlite file that the scraper produced in the current directory.
