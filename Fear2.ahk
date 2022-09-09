#SingleInstance, force

#IfWinActive ahk_exe FEAR2.exe
{
    XButton1::
        Send, -
    return

    XButton2::
        Send, =
    return
}