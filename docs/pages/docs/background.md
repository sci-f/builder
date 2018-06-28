---
title: Background
sidebar: main_sidebar
permalink: background
folder: docs
---

The original code, to build "the same" Docker and Singularity containers, took the build strategy of having a Singularity recipe
and Dockerfile in the same repository. Since we can import Docker into Singularity, I decided to only write one recipe (Dockerfile)
and thus kill two birds with one stone.

## Why use a SCIF recipe?
When we build a container, we usually need to start with a Dockerfile (or Singularity recipe) and it looks like this:

```
Dockerfile --> Dockerhub --> Docker Image
               Dockerhub --> Singularity Recipe --> Singularity Container
```

But what if we want to build both Docker and Singularity? We can either create one recipe type (and convert to the other) or have an installation of a recipe file
that can be done  **any** container technology. That is SCIF.  Our workflow instead looks like this:

```
SCIF Recipe --> Dockerfile --> Dockerfile --> Docker Image
            --> Singularity Recipe --> Singularity Container

```

For additional background, see the <a href="https://vsoch.github.io/2018/scientific-filesystem-builder/" target="_blank">associated post by @vsoch</a>.
