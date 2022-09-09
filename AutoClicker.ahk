#SingleInstance Force

toggled := 0
return

AutoClick:
    Click
return

^q::
    toggled := !toggled

    if (toggled) {
        SoundBeep, 784
        GoSub, AutoClick
        SetTimer, AutoClick, 2000 ; 5 minutes = 300,000 ms
    } else {
        SetTimer, AutoClick, Off
        SoundBeep, 523
    }
return