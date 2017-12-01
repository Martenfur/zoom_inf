///drawWorld()

/*
Draws all the game objects.
*/

for(var i=0; i<instance_number(field); i+=1)
{
  with(instance_find(field,i))
  {
    if id!=mainField || id!=mainField.myField
    {fieldDraw()}
  }
}

with(mainField)
{fieldDraw()}

with(mainField.myField)
{fieldDraw()}

with(player)
{drawPlayer(mainField)}


