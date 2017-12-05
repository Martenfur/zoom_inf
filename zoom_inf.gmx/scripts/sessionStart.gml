///sessionStart()

menuStateTransition(stateSessionStarted)
instance_create(0,0,game_cntrl)

instance_create(0,FIELD_INTERNAL_H,player)
with(mainField)
{fieldIncrementState(0)}

if music_enabled
{audio_play_sound(mus_main,0,1)}


