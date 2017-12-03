///menuSettingsButtonsCreate()

/*
Creates buttons for settings.
Reminder for layout ids:
0 - sound
1 - back
*/

menuButtonsDelete()

var _new;

_new=buttonCreate("music: on",l_settings,0,FIELD_INTERNAL_H,FIELD_INTERNAL_H/4,buttonSettingsMusicClick)
ds_list_add(myButtons,_new)

_new=buttonCreate("back",l_settings,1,FIELD_INTERNAL_H,FIELD_INTERNAL_H/4,buttonSettingsBackClick)
ds_list_add(myButtons,_new)


