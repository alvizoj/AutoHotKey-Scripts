#SingleInstance Force

#IfWinActive ahk_exe TheForest.exe
{
    ; ----- HOTKEY: Back Mouse Button - Lighter (L) -----
    *XButton1::
        Send, {l Down}{l Up}
    return

    ; ----- HOTKEY: Front Mouse Button - Take (E) -----
    *XButton2::
        Send, {e Down}{e Up}
    return
}
