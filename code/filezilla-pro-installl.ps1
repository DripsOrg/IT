New-Item -Path "C:\" -Name "filepro" -Itemtype Directory
cd C:\filepro



invoke-webrequest -Uri "https://github.com/DripsOrg/IT/raw/refs/heads/main/filezillapro.exe" -outfile "C:\filepro\filezillapro.exe"






Start-Process -filepath 'C:\filepro\filezillapro.exe' -argumentlist '/quiet' -wait