///sessionEnd()

/*
Ends game session.
*/

with(mainField)
{fieldIncrementState(1)}

with(game_cntrl)
{instance_destroy()}
with(player)
{instance_destroy()}

var new=instance_create(0,0,menu_cntrl);
new.state=new.stateGameover

