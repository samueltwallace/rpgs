---
title: Sam's Fiction Workshop
author: Sam W
---

# Sam's Fiction Workshop

[About Me](./about/) [^image-source]

## Webpages Here:

{% assign files = site.static_files %}
{% for file in files %}
* [{{ file.basename }}]({{ file.path }})
{% endfor %}


[^image-source]: ([Background Image Source](https://donjon.bin.sh))

<link rel="stylesheet" href="./rpg-styles.css">


