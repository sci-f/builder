FROM continuumio/miniconda3

###############################################
# SciF Base
#
# docker build -t vanessa/cowsay .
# docker run vanessa/cowsay
#
###############################################

ENV DEBIAN_FRONTEND noninteractive

# Dependencies
RUN apt-get update && apt-get install -y wget \
                                         unzip \
                                         apt-utils \
                                         python

# Install scif from pypi
RUN /opt/conda/bin/pip install scif==0.0.75

# Install the filesystem from the recipe
ADD *.scif /
RUN scif install /recipe.scif

# SciF Entrypoint
ENTRYPOINT ["scif"]
