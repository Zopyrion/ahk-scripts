#SingleInstance force
#CommentFlag //

// Increase volume by 4 on pressing PgUp if volume is not muted
PgUp::
SoundGet, master_mute, , mute
if(master_mute = "Off"){
	SoundSet, +4
}
return

// Decrease volume by 4 on pressing PgDn if volume is not muted
PgDn::
SoundGet, master_mute, , mute
if(master_mute = "Off"){
	SoundSet, -4
}
return

// Mute or unmute volume on pressing Home key
Home::SoundSet, +1, , Mute 

