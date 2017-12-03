///menuMenuButtonsCreate()

/*
Creates buttons for main menu.
Reminder for layout ids:
0 - settings
1 - leaderboards
*/

menuButtonsDelete()

var _new;

_new=buttonCreate("settings",l_menu,0,FIELD_INTERNAL_H,FIELD_INTERNAL_H/4,buttonSettingsClick)
ds_list_add(myButtons,_new)

_new=buttonCreate("leaderboards",l_menu,1,FIELD_INTERNAL_H,FIELD_INTERNAL_H/4,buttonLeaderboardsClick)
ds_list_add(myButtons,_new)


