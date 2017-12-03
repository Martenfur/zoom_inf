///ringControllable()

/*
Tells if ring can be controlled by the player.
*/

with(mainField)
{
  if rings!=-1 && ringCurrent<ringsAm && !paused
  {return (ringsAm>0 && rings[ringCurrent]==other.id)} 
}

return 0
