# The base image (Windows OS)
FROM mydockercity/servercorewithdrives:1903

# Build variable to allow passing in a specific version of ElasticSearch
ARG ELASTICSEARCH_VERSION=7.5.1
ARG ELASTICSEARCH_SOURCE=elasticsearch-${ELASTICSEARCH_VERSION}
ARG ELASTICSEARCH_ZIP=elasticsearch-${ELASTICSEARCH_VERSION}-windows-x86_64.zip

# Copy apps from sources to root directory
COPY sources /

# Extracts the zip to a folder then delete the zip
RUN Expand-Archive -Path $Env:ELASTICSEARCH_ZIP -DestinationPath C:\\; \
	Remove-Item -Path $Env:ELASTICSEARCH_ZIP

# ELASTICSEARCH_HOME is used by RunElasticSearch.cmd file to launch ElasticSearch.
ENV ELASTICSEARCH_HOME C:\\${ELASTICSEARCH_SOURCE}

# Copy config files
COPY config\\elasticsearch.yml ${ELASTICSEARCH_HOME}/config/

# Call file to start ELASTICSEARCH
CMD ["C:/RunElasticSearch.cmd"]

EXPOSE 9200 9300

LABEL maintainer="vndevpro@gmail.com"