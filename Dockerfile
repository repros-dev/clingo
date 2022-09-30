FROM cirss/clingo-api-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/boot-setup /repro/dist/
RUN bash /repro/dist/boot-setup

USER repro

RUN repro.require clingo-api exports --jupyter

CMD  /bin/bash -il
