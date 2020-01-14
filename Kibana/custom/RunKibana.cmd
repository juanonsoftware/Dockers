PowerShell Copy-Item -Path C:\Custom\app\*.* -Destination %KIBANA_HOME%\ -Recurse -Force -ErrorAction Ignore

PowerShell Copy-Item -Path C:\Custom\RunKibana.cmd -Destination C:\ -Recurse -Force -ErrorAction Ignore

CALL %KIBANA_HOME%\bin\kibana.bat