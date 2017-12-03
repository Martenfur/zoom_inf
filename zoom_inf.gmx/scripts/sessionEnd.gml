///sessionEnd(gameover)

/*
Ends game session.
*/

with(mainField)
{fieldIncrementState(1)}

with(game_cntrl)
{destroy=1}
with(player)
{instance_destroy()}

var _new=instance_create(0,0,menu_cntrl);
if argument0
{
  with(_new) 
  {
    menuStateInstantTransition(stateGameover)
    menuGameoverButtonsCreate()
  }
}

score_prev=score_cur
if score_cur>score_high
{score_high=score_cur}
gameSave()



