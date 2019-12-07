#SingleInstance force ; Only one instance of this script is allowed

; Delay scroll wheel click to 50ms to prevent double clicking bug
MButton::
If ( A_TimeSincePriorHotkey > 50)
Send, {MButton Down}
return
Mbutton Up::Send, {MButton Up}
