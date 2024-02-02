---
title: Sam's Fiction Workshop
author: Sam W
---

This is my old blog. Visit my new one [here](https://quajzen.blogspot.com).

# Sam's Fiction Workshop

[About Me](./about/) [^image-source]

## Webpages Here:

{% assign myfiles = site.static_files | where: "post", true %}
{% for f in myfiles %}
* [{{ f.basename }}]({{ f.path }})
{% endfor %}


[^image-source]: ([Background Image Source](https://donjon.bin.sh))

<link rel="stylesheet" href="./rpg-styles.css">


