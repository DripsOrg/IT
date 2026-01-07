New-Item -Path "C:\" -Name "cursor" -Itemtype Directory
cd C:\cursor
 
invoke-webrequest -Uri "https://api2.cursor.sh/updates/download/golden/win32-x64/cursor/2.1" -outfile "C:\cursor.exe"

 
 
Start-Process -filepath 'C:\cursor\cursor.exe' -argumentlist '/quiet' -wait

