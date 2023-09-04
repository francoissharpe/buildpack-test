FROM paketobuildpacks/run:base-cnb

USER root
COPY packages.txt packages.txt
# Install pacakges from packages.txt and cleanup
RUN apt-get update -y  && \
    xargs -a packages.txt apt-get install -y --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm packages.txt
USER cnb