FROM mydockercity/servercorewithdrives:1903-v3 AS tmpimg
# Build variable to allow passing in a specific version of Elasticsearch to download
ARG KIBANA_VERSION=7.5.1
ARG KIBANA_SOURCE=kibana-${KIBANA_VERSION}-windows-x86_64
ARG KIBANA_ZIP=kibana-${KIBANA_VERSION}-windows-x86_64.zip
# Copy apps from sources to root directory
COPY sources /
# Extracts the zip to a folder then delete the zip
RUN Expand-Archive -Path $Env:KIBANA_ZIP -DestinationPath C:\\ ;


# The base image (Windows OS)
FROM mydockercity/servercorewithdrives:1903-v3

# Build variable to allow passing in a specific version of Elasticsearch to download
ARG KIBANA_VERSION=7.5.1

# ELASTIC_HOME is used by the runelasticsearch.cmd file to launch Elasticsearch.
ENV KIBANA_HOME C:\\kibana-${KIBANA_VERSION}-windows-x86_64

# Copy ElasticSearch from tmpimg
COPY --from=tmpimg ${KIBANA_HOME}/ ${KIBANA_HOME}

# Copy config and run files
COPY custom/app/ ${KIBANA_HOME}/
COPY custom/RunKibana.cmd C:/

# Define Custom volume then copy files for new containers
VOLUME c:/Custom

# Call file to start Kibana
CMD ["C:/RunKibana.cmd"]

EXPOSE 5601
