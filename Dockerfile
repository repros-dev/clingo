FROM cirss/clingo-api-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/setup /repro/dist/
RUN bash /repro/dist/setup

USER repro

RUN repro.require clingo-api exports

CMD  /bin/bash -il
