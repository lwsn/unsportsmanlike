#SingleInstance force

#HotIf WinActive("Slack")
^+W::
{
    SetTimer TryToWin, 200
}

TryToWin() {
    MouseGetPos(&MouseX, &MouseY)
    res := PixelSearch(&PX, &PY, MouseX, MouseY, MouseX + 140, MouseY + 40, 0x178467, 15)
    if (res)
    {
        SetTimer(, 0)
        MouseClick("left", PX, PY)
        sleep 150
        MouseClick("left", PX, PY)
        sleep 150
        MouseClick("left", PX, PY)
        sleep 150
        MouseClick("left", PX, PY)
        MsgBox("Did you win?")
    }
}
