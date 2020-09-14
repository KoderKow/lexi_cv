## Start with the shiny docker image
FROM rocker/tidyverse:3.6.2

MAINTAINER "Sam Abbott" contact@samabbott.co.uk

ADD . /home/rstudio/cv

WORKDIR /home/rstudio/cv
## Install dev deps
RUN Rscript scripts/install.R

## Install the getTBinR
RUN Rscript -e 'tinytex::install_tinytex()'