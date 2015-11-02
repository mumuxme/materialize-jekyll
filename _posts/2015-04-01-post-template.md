---
layout: post
title: Post Template
date: 2015-04-01
update: 2015-10-25
category: "readme"
tags: [jekyll, mdl]
author: Lambda
---


This is a template of the post. You can find all valid settings from here.


## Post's YAML

```
`layout: post`
    This should **NOT** be changed, I think...

`title`
    This is the title of your article, Eg: `title: Post Template`

`date`
    The data you post the article, Eg: `date: 2015-08-17` or `data: 2015-08-17 15:06:10`

`category`
    The category, no blanks, one post to one category. Ex: `category: test`, `category: test-this`

`update` (optional)
    Eg: `update: 2015-05-02`

`tags`
    The tags, you can specify one or more tags. Eg: `tags: [jekyll, mdl, html]`.

`author`
    The author of the article. Eg: `author: Lambda`, default is the site's author.
```

## Post's Content

### Include Liquid in markdown

- 1. All legal markdown syntax may be allowed. (markdown: redcarpet)
- 2. Liquid synatax also should be allowed.

So, if you want to avoid syntax conflicts, you can use {% raw %}`{% raw %}`{% endraw %}


### Markdown
