///fieldIncrementState(gameover)

/*
Increments states of all the fields.
If gameover is 1, doesn't activate child field.
*/

if state=0
{
  fieldRingsSpawn()
  fieldScaleChange(1)
}
      
if state=1
{
  fieldScaleChange(3)
  player.x=valueBound(player.x+(-myField.rotation+mainField.rotation)/360*FIELD_INTERNAL_W,FIELD_INTERNAL_W)
  mainField=myField
  if !argument0
  {
    with(myField)
    {fieldIncrementState(0)}
  }
}

with(field)
{
  if state=2
  {fieldScaleChange(scale*1.5)}
}

state+=1
if state>2
{state=2}

