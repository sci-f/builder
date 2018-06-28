---
title: Cowsay Example
sidebar: main_sidebar
permalink: example
folder: docs
---


Let's show a glimpse of the container that is provided by this repository. As a reminder, here is how we built it:

```bash
docker pull vanessa/cowsay
docker build -t vanessa/cowsay .
```

## Video
Here is a quick view of using the container!

<script src="https://asciinema.org/a/189113.js" id="asciicast-189113" data-speed="2" async></script>

You should explore using it on your own, and see the <a href="https://vsoch.github.io/2018/scientific-filesystem-builder/" target="_blank">associated post</a> for more examples of
how to customize.

```bash
$ docker run vanessa/cowsay
```
