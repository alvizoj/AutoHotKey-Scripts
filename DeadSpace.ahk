#SingleInstance Force
/*

Dead Space 1 & 2 Hotkeys


*/

#If WinActive("ahk_exe Dead Space.exe") || Winactive("ahk_exe deadspace2.exe")
{
    ; ----- HOTKEY: Front Mouse Button - Stasis (C) -----
    *XButton1::
        Send, {c Down}{c Up}
    return

    ; ----- HOTKEY: Back Mouse Button - Kinesis (F) -----
    *XButton2::
	Send, {f Down}{f Up}
    return
}
