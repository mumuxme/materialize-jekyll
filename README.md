Materialize - jekyll
==============


## Introducton

This jekyll theme is based on [materialize](http://materializecss.com).
(NOTE: this theme is only made for my own, but you can modify it freely.)

[Open demo](https://mumuxme.github.io/materialize-jekyll/)


## Getting start

#### Install

You may need some dev headers, for debian/linux, just run:

```
# apt-get install liblzma-dev zlib1g-dev
```

(Other dependencies may also needed.)

```
$ git clone https://github.com/mumuxme/materialize-jekyll
$ cd materialize-jekyll
$ bundle install
```

#### Run

1. Modify `_config.yml`, `about.md` and other(whatever you need).
2. You can add a `favicon.ico` file in the project root directory.
3. If you want to use google analytics, add your `google-analytics.js` into `js` directory.

Then:

```
$ bundle exec jekyll s

# or start with draft
$ bundle exec jekyll s --drafts
```

## Or start with docker

```
cd materialize-jekyll

# export GEM_MIRROR=mirror.https://rubygems.org
export GEM_MIRROR='Your-ruby-gem-mirror'

make build
make run
```


## Other

#### Emoji

You can use GitHub-flavored emoji. See [emoji cheat sheet](http://www.webpagefx.com/tools/emoji-cheat-sheet/)

#### TODO

- Add comment. (???)
- Add options to choose self host or cdn.


## License

[GNU GPL v3](http://www.gnu.org/licenses/).

Others:

- jquery: <https://jquery.com>
- materialize: <http://materializecss.com>
- material-scrolltop: [bartholomej/material-scrolltop](https://github.com/bartholomej/material-scrolltop)
- material design icon: [Templarian/MaterialDesign](https://github.com/Templarian/MaterialDesign) or <https://materialdesignicons.com/getting-started>
- GitHub-flavored emoji plugin: [jemoji](https://github.com/jekyll/jemoji)
