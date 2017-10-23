///angleBound(ang)

/*
Sets angle into 0..359 range.
*/

var _ang=argument0;

while(_ang<0)
{_ang+=360}

while(_ang>=360)
{_ang-=360}

return _ang

