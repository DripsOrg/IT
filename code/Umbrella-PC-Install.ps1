New-Item -Path "C:\" -Name "Umbrellainstall" -Itemtype Directory
cd C:\umbrellainstall



invoke-webrequest -Uri "https://github.com/DripsOrg/IT/raw/refs/heads/main/Umbrellainstall.zip" -outfile "C:\umbrellainstall\umbrellainstall.zip"
expand-archive "C:\umbrellainstall\umbrellainstall.zip" -destinationpath "C:\umbrellainstall"





Start-Process -filepath 'C:\umbrellainstall\umbrellainstall\cisco-secure-client-win-5.1.12.146-core-vpn-predeploy-k9.msi' -argumentlist '/quiet' -wait



Invoke-Expression -Command "'C:\Program Files (x86)\Cisco\Cisco Secure Client\UI\csc_ui.exe'"




Start-Process -filepath 'C:\umbrellainstall\umbrellainstall\cisco-secure-client-win-5.1.12.146-umbrella-predeploy-k9.msi' -argumentlist '/quiet' -wait





move-item -Path "c:\umbrellainstall\umbrellainstall\orginfo.json" -destination "C:\ProgramData\Cisco\Cisco Secure Client\Umbrella\orginfo.json"
