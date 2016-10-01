FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y texlive-xetex texlive-fonts-recommended latex-xcolor \ 
                       texlive-math-extra texlive-latex-extra biber fonts-lmodern

COPY ./fonts /usr/share/fonts/truetype

WORKDIR /cv
