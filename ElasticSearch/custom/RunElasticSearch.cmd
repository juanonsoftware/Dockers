PowerShell Copy-Item -Path C:\Custom\app\*.* -Destination %ELASTICSEARCH_SOURCE%\ -Recurse -Force -ErrorAction Ignore

PowerShell Copy-Item -Path C:\Custom\RunElasticSearch.cmd -Destination C:\ -Recurse -Force -ErrorAction Ignore

CALL %ELASTICSEARCH_HOME%\bin\elasticsearch.bat
