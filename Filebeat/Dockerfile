FROM mydockercity/servercorewithdrives:1903-v3 AS tmpimg
# Build variable to allow passing in a specific version of Filebeat to download
ARG FILEBEAT_VERSION=7.5.1
ARG FILEBEAT_SOURCE=filebeat-${FILEBEAT_VERSION}-windows-x86_64
ARG FILEBEAT_ZIP=filebeat-${FILEBEAT_VERSION}-windows-x86_64.zip
# Copy apps from sources to root directory
COPY sources /
# Extracts the zip to a folder then delete the zip
RUN Expand-Archive -Path $Env:FILEBEAT_ZIP -DestinationPath C:\\ ;

# Base image
FROM mydockercity/servercorewithdrives:1903-v3

# Build variable to allow passing in a specific version of Filebeat to download
ARG FILEBEAT_VERSION=7.5.1

# FILEBEAT_HOME is used by the RunFileBeat.cmd file to launch FileBeat.
ENV FILEBEAT_HOME C:\\filebeat-${FILEBEAT_VERSION}-windows-x86_64

# Copy filebeat package
COPY --from=tmpimg ${FILEBEAT_HOME} ${FILEBEAT_HOME}
COPY custom/RunFilebeat.cmd C:/

# Copy config files
COPY custom/app/ ${FILEBEAT_HOME}/

# Create source files volume & drive
VOLUME C:/Files

RUN Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices' -Name 'F:' -Value '\??\C:\Files' -Type String;

# Define Custom volume then copy files for new containers
VOLUME C:/Custom

# Call file to start Kibana
CMD ["C:/RunFilebeat.cmd"]
