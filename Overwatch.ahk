#SingleInstance Force
/*

Overwatch Hotkeys

*/

#IfWinActive ahk_exe Overwatch.exe
{
    ; ----- HOTKEY: F4 - Text for comp -----
    $F4::
        SetKeyDelay, 1
        Send, Can we get 1 tank, 1 DPS, 1 healer please
        Send, {Enter}
    return

    ; ----- HOTKEY: F3 - Email -----
    $F3::
        SetKeyDelay, 1
        Send, jalvizo12@gmail.com
	    Send, {Tab}
    return
}