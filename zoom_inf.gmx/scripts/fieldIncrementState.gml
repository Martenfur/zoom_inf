///filedIncrementState()

if state=0
{
  fieldRingsSpawn()
  fieldScaleChange(1)
}
      
if state=1
{
  fieldScaleChange(3)
  player.x=valueBound(player.x+(-myField.rotation+game_cntrl.mainField.rotation)/360*FIELD_INTERNAL_W,FIELD_INTERNAL_W)
  game_cntrl.mainField=myField
  with(myField)
  {fieldIncrementState()}
}

with(field)
if state=2
{fieldScaleChange(scale+3)}

state+=1
if state>2
{state=2}

