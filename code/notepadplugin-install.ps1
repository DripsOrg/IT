Stop-Process -Name "notepad++" -Force
cd "C:\Program Files\Notepad++\plugins"
 
invoke-webrequest -Uri "https://github.com/DripsOrg/IT/raw/refs/heads/main/plugins.zip" -outfile "C:\Program Files\Notepad++\plugins\plugins.zip"

 
expand-archive "C:\Program Files\Notepad++\plugins\plugins.zip" -destinationpath "C:\Program Files\Notepad++\plugins"
 



Stop-Process -Name "notepad++" -Force
cd "C:\Program Files (x86)\Notepad++\plugins"
 
invoke-webrequest -Uri "https://github.com/DripsOrg/IT/raw/refs/heads/main/plugins.zip" -outfile "C:\Program Files (x86)\Notepad++\plugins\plugins.zip"

 
expand-archive "C:\Program Files (x86)\Notepad++\plugins\plugins.zip" -destinationpath "C:\Program Files (x86)\Notepad++\plugins"

 