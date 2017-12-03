///menuButtonsDelete()

/*
Destroys all menu buttons.
*/

for(var i=0; i<ds_list_size(myButtons) i+=1)
{
  with(myButtons[|i])
  {instance_destroy()}
}

ds_list_clear(myButtons)

