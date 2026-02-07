FROM rocker/rstudio:4.4.2

USER root

COPY renv.lock ./
COPY .Rprofile ./
COPY renv ./renv

RUN R -e "install.packages('renv', repos='https://cloud.r-project.org'); renv::restore(prompt = FALSE)"

USER rstudio



