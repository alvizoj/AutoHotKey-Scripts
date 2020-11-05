#SingleInstance Force
/*

Mass Effect Andromeda Hotkeys

WinGetClass, classvar, Mass Effect™: Andromeda
WinGet, exevar, ProcessName, Mass Effect™: Andromeda
MsgBox % "ahk_class: " classvar "`nahk_exe: " exevar
*/

#IfWinActive ahk_class Mass Effect™: Andromeda
{
    ; ----- HOTKEY: Ignores console key-binding -----
    ~::return
    `::return

    ; ----- HOTKEY: Back Mouse Button - Evade -----
    ; ----- Needed because next hotkey causes XButton1 to not register anymore by itself -----
    *XButton1::
    Send, {XButton1}
    return

    *XButton2::
    Send, {XButton2}
    return
   

    ; ----- HOTKEY: Both front&back mouse buttons (at same time) - Ability 3 -----
    XButton1 & XButton2::
    XButton2 & XButton1::
        Send, {3 Down}{3 Up}
    return

}
#IfWinActive