# Morph.io ruby runner

Docker image for testing ruby [morph.io](https://morph.io) scrapers in the same environment that they run in on the site.

This basically just extends the morph-ruby base image with some shortcuts so there is less to type.

## Usage

Go into a directory that contains a `scraper.rb` file, then run the docker image, mounting the current directory as `/repo` in the docker container.

```
cd path-to-ruby-scraper
docker run -it --rm -v "$(pwd)":/repo hecticjeff/morph-ruby-runner
```

Then you should have the `data.sqlite` file that the scraper produced in the current directory.

## License

The MIT License (MIT)

Copyright (c) 2014 Chris Mytton

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
