PowerShell Copy-Item -Path C:\Custom\app\*.* -Destination %FILEBEAT_HOME%\ -Recurse -Force -ErrorAction Ignore

PowerShell Copy-Item -Path C:\Custom\RunFilebeat.cmd -Destination C:\ -Recurse -Force -ErrorAction Ignore

%FILEBEAT_HOME%\filebeat.exe -c %FILEBEAT_HOME%\filebeat.yml -E logging.files.redirect_stderr=true
