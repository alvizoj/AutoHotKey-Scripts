#SingleInstance Force
SetKeyDelay, 100

; #IfWinActive ahk_class UnrealWindow
#IfWinActive ahk_exe DeadByDaylight-Win64-Shipping.exe
{
    ; ----- HOTKEY: Front Mouse Buttons - Automatic left/right wiggle -----
    *XButton2::
    Loop
    {
        Send, {XButton1}
		Sleep, 825
    } until !GetKeyState("XButton2","P")
    return

    ; ----- HOTKEY: F1 - Text for streamers -----
    $F1::
        SetKeyDelay, 1
        Send, anyone wanna stack ghastly gateau with me?
        Send, {Enter}
    return
}
#IfWinActive