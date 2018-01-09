---
layout: post
title: An example post
date: 2016-12-30
category: "readme"
tags: [jekyll, material design]
author: Lambda
comment: false
---

This is an example of post.


## Post's YAML 

---

- `layout: post`
    : This should **NOT** be changed.
- `title`
    : The title of your article.
- `author`
    : E.g. `author: Lambda`, default is the site's author.
- `date`
    : E.g. `date: 2015-08-17` or `data: 2015-08-17 15:06:10`
- `categories`
    : No blanks, one post to one category. E.g. `categories: ["test"]`, `categories: ["test-this"]`
- `tags` (optional)
    : You can specify one or more tags. E.g. `tags: [jekyll, html]`.

---

- `mathjax` (optional)
    : if you need enable mathjax: `mathjax: true`; otherwise mean disable.
- `update` (optional)
    : E.g. `update: 2015-05-02`
- `comment` (optional)
    : enable the comment. E.g. `comment: true`
- `published` (optional)
    : true or false

---


## Post's Content

#### Include Liquid in markdown

- All legal markdown syntax may be allowed. 
- Liquid synatax also should be allowed.


So, if you want to avoid syntax conflicts, you can use {% raw %}`{% raw %}`{% endraw %}

(More liquid syntax, see [Liquid-for-Designers](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers))

#### Markdown

[kramdown](https://kramdown.gettalong.org/)


## Test

Some long sentence.[^footnote] Other long sentence.

[^footnote]: [Link](https://google.com).
