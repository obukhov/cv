FROM pandoc/latex:2-ubuntu

RUN apt-get update \
    && apt-get install texlive-xetex librsvg2-bin texlive-science --assume-yes --no-install-recommends --quiet=2 \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*