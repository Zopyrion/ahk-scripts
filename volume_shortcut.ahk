#SingleInstance force ; Only one instance of this script is allowed

Change = 4 ; Change in volume on shortcut press

; Increase volume by Change on pressing PgUp if volume is not muted
PgUp::
SoundGet, master_mute, , mute
if(master_mute = "Off"){
	SoundSet, +Change
}
return

; Decrease volume by Change on pressing PgDn if volume is not muted
PgDn::
SoundGet, master_mute, , mute
if(master_mute = "Off"){
	SoundSet, -Change
}
return

; Mute or unmute volume on pressing Home key
Home::SoundSet, +1, , Mute 
