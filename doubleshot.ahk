
 
#NoEnv
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
 
RButton::
 Sleep, 100
 Click, Left, Down
 Sleep, 100
 Click, Left, Up
 Sleep, 50
 Click, WheelDown
 Sleep, 100
 Click, Left, Down
 Sleep, 100
 Click, Left, Up
Return
 
F3::
Suspend, toggle
 
 if A_IsSuspended = 0
{
Soundset, -5
SoundBeep , 125, 75
SoundBeep , 225, 75
Soundset, +5
}
 else 
{
Soundset, -5
SoundBeep , 225, 75
SoundBeep , 125, 75
Soundset, +5
}
 
return
 
F4::
exitapp