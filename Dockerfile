FROM python:3.12

ARG APPUSER=appuser
ARG HOMEDIR=/home/${APPUSER}
ARG APPDIR=${HOMEDIR}/xlsx2pdf

RUN apt-get update

RUN useradd ${APPUSER}
USER ${APPUSER}

COPY . ${APPDIR}

WORKDIR ${APPDIR}

CMD ["python3", "xlsx2pdf.py"]