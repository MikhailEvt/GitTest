#Get-ChildItem -Path ./ -Filter  "*-7.15.*.*" -Recurse |
#Rename-Item -NewName {$_.Name -Replace "-7\.15\.[0-9]*\.*","-7.15.1235."}


$path = Get-ChildItem -Path ./ -Filter  "PVS-*-sdh.txt"
$path -match  "-7\.15\.(\d{4})\."
$str = $matches[1]


Get-ChildItem -Path ./ -Filter  "*-7.15.*.*" -Recurse |
Rename-Item -NewName {$_.Name -Replace "-7\.15\.[0-9]*\.*","-7.15.$($str)."}
