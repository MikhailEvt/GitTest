Get-ChildItem -Path ./ -Filter  "*-7.15.*.*" -Recurse |
Rename-Item -NewName {$_.Name -Replace "-7\.15\.[0-9]*\.*","-7.15.1235."}
