///ringControllable()

/*
Tells if ring can be controlled by the player.
*/

with(game_cntrl)
{
  if mainField.ringCurrent<mainField.ringsAm
  {return (mainField.ringsAm>0 && mainField.rings[mainField.ringCurrent]==other.id)} 
}

return 0
