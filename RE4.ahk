#SingleInstance Force

#If WinActive("ahk_exe re4.exe")
    {
        ; ----- HOTKEY: Caps Lock - Map (M) -----
        CapsLock::
        Send, {m Down}{m Up}
        return
    }