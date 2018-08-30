FROM dynverse/dynwrap:bioc

LABEL version 0.1.0

RUN R -e 'devtools::install_cran("destiny")'

RUN apt-get install -y libcgal-dev libglu1-mesa-dev libglu1-mesa-dev

RUN R -e 'devtools::install_cran("FateID")'

RUN R -e 'devtools::install_cran("RaceID")'

ADD . /code

ENTRYPOINT Rscript /code/run.R
