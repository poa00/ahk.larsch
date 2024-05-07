#Requires AutoHotkey v2

#SingleInstance Force

#Include Launcher.ahk
#Include AltGrLayer.ahk
#Include NewTerminal.ahk
#Include AutoReload.ahk

#y::Launch("ahk_exe Discord.exe", "C:\Users\larsch\AppData\Local\Discord\Update.exe --processStart Discord.exe")
#t::Launch("ahk_class TTOTAL_CMD", "D:\appl\totalcmd\TOTALCMD64.EXE")
#c::Launch("ahk_exe qalculate-qt.exe", "c:\Program Files\Qalculate\qalculate-qt.exe")
#+r::Reload()
#SPACE::Launch("ahk_exe WindowsTerminal.exe", "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.17.11461.0_x64__8wekyb3d8bbwe\wt.exe")
#+f12::Reload
