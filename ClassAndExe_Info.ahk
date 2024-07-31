/*
This script outputs an application's .exe filename and process name.
Useful when wanting to restrict hotkeys to a specific application, such as with WinActive() function.
To use, replace NAME_ON_HOVER variable with the name given when hovering over an application's taskbar icon.
*/

WinGetClass, classvar, NAME_ON_HOVER
WinGet, exevar, ProcessName, NAME_ON_HOVER
MsgBox % "ahk_class: " classvar "`nahk_exe: " exevar