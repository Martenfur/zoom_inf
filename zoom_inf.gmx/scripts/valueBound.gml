///valueBound(ang,bound)

/*
Sets angle into 0..bound range.
Useful for getting angle into 0..359 range and wrapping values around.
*/

var _val=argument0;

while(_val<0)
{_val+=argument1}

while(_val>=argument1)
{_val-=argument1}

return _val

