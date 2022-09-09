#SingleInstance Force
SetKeyDelay, 100

/*

Dead by Daylight Hotkeys

App info:
WinGetClass, classvar, DeadByDaylight
WinGet, exevar, ProcessName, DeadByDaylight
MsgBox % "ahk_class: " classvar "`nahk_exe: " exevar

*/

; #IfWinActive ahk_class UnrealWindow
#IfWinActive ahk_exe DeadByDaylight-Win64-Shipping.exe
{
    ; ----- HOTKEY: Front/Back Mouse Buttons - Automatic left/right wiggle -----
    *XButton1::
    *XButton2::
    Loop
    {
        Send, {a Down}{a Up}
        Sleep, 75
        Send, {d Down}{d Up}
    } until !GetKeyState("XButton1","P") and !GetKeyState("XButton2","P")
    return

    ; ----- HOTKEY: F4 - Hook Struggle -----
    struggling := 0
    return

    Struggle:
        Send, {f Down}
        Random, msHeldDown, 20, 80
        Sleep, msHeldDown
        Send, {f Up}
    return

    $F4::
        struggling := !struggling

        if (struggling) {
            SoundBeep, 784
            GoSub, Struggle
            SetTimer, Struggle, 158
        } else {
            SoundBeep, 523
            SetTimer, Struggle, Off
        }
    return

    ; ----- HOTKEY: F1 - Text for streamers -----
    $F1::
        SetKeyDelay, 1
        Send, anyone wanna stack ghastly gateau with me?
        Send, {Enter}
    return
}
#IfWinActive