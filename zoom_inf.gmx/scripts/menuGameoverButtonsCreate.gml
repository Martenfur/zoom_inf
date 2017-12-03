///menuSettingsButtonsCreate()

/*
Creates buttons for gameover.
Reminder for layout ids:
0 - back
*/

menuButtonsDelete()

var _new;

_new=buttonCreate("back",l_gameover,0,FIELD_INTERNAL_H,FIELD_INTERNAL_H/4,buttonGameoverBackClick)
ds_list_add(myButtons,_new)


