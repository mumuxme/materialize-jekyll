---
layout: post
title: Post Template
date: 2015-04-01
category: "readme"
tags: [jekyll, material design]
author: Lambda
comment: false
---

This is a template of the post.


## Post's YAML 

~~~
`layout: post`
    this should **NOT** be changed...

`title`
    the title of your article, E.g. `title: Post Template`

`date`
    E.g. `date: 2015-08-17` or `data: 2015-08-17 15:06:10`

`category`
    no blanks, one post to one category. E.g. `category: test`, `category: test-this`

`update` (optional)
    E.g. `update: 2015-05-02`

`tags`
    you can specify one or more tags. E.g. `tags: [jekyll, mdl, html]`.

`author`
    E.g. `author: Lambda`, default is the site's author.

`comment` (optional)
    enable the comment. E.g. `comment: true`
    
`published`
    true or false
~~~


## Post's Content

### Include Liquid in markdown

- All legal markdown syntax may be allowed. 
- Liquid synatax also should be allowed.


So, if you want to avoid syntax conflicts, you can use {% raw %}`{% raw %}`{% endraw %}

(More liquid syntax, see [Liquid-for-Designers](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers))

### Markdown

Besides the traditional markdown, you can use some extensions. See the following in `_config.yml`

~~~
markdown: redcarpet
redcarpet:
  extensions: ["fenced_code_blocks", "superscript"]
~~~

(More detail, see <https://github.com/vmg/redcarpet>)

