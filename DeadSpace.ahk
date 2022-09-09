#SingleInstance Force
/*

Dead Space Hotkeys


*/

#IfWinActive ahk_exe Dead Space.exe
{
    ; ----- HOTKEY: Front/Back Mouse Buttons - Stasis (C) -----
    *XButton1::
        Send, {c Down}{c Up}
    return
}
