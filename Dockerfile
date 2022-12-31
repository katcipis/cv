FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y texlive-xetex texlive-fonts-recommended \ 
                       texlive-base tex-common texlive-full texlive-latex-extra biber fonts-lmodern

COPY ./fonts /usr/share/fonts/truetype

WORKDIR /cv
