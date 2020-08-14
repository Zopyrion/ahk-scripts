#SingleInstance force ; Only one instance of this script is allowed

Change = 4 ; Change in volume on shortcut press

; Increase volume by Change on pressing PgUp if volume is not muted
PgUp::
SoundGet, master_mute, , mute
if(master_mute = "Off"){
	SoundSet, +Change
} else {
	SoundGet, master_volume	
	if(Floor(master_volume) = 0){
		SoundSet, +1, , Mute
		SoundSet, +Change
	}
}
return

; Decrease volume by Change on pressing PgDn if volume is not muted
PgDn::
SoundGet, master_mute, , mute
if(master_mute = "Off"){
	SoundSet, -Change
	SoundGet, master_volume	
	if(Floor(master_volume) = 0){
		SoundSet, +1, , Mute
	}
}
return

; Mute or unmute volume on pressing Home key
Home::
SoundGet, master_volume	
if(Floor(master_volume) > 0){
	SoundSet, +1, , Mute
}
return
