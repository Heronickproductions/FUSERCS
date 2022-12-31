cd Fuser\Content\Paks
del customSongsUnlocked_P.pak
del customSongsUnlocked_P.sig
TIMEOUT /T 3
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'FUSER', 'New Songs added', [System.Windows.Forms.ToolTipIcon]::None)}"
cd ..
cd ..
cd Binaries\Win64
FuserEOS-Win64-Shipping.exe -AUTH_LOGIN=unused -AUTH_PASSWORD=901dbe79901dbe79901dbe79901dbe79 -AUTH_TYPE=exchangecode -epicapp=2939f4752d4b4ace95a8e1b16e79d3f5 -epicenv=Prod -EpicPortal  -epicusername="Arbys" -epicuserid=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -epiclocale=en-US