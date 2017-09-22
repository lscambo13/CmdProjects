hidden ="HKCU\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\EXPLORER\ADVANCED\HIDDEN"
Shidden ="HKCU\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\EXPLORER\ADVANCED\SHOWSUPERHIDDEN"
set sh = wscript.createobject("wscript.shell")
ST = sh.RegRead(Hidden)
if ST = 2 then
SH.RegWrite Hidden, 1, "REG_DWORD"
SH.RegWrite SHidden, 1, "REG_DWORD"
else
SH.RegWrite hidden, 2, "REG_DWORD"
SH.regwrite shidden, 0, "REG_DWORD"
end if
SH.SendKeys("{F5}")
