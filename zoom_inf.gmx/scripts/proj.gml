///proj(px,py,vx,vy)

/*
Calculates projection of a point to a vector.
*/

var _px=argument0,
    _py=argument1,
    _vx=argument2,
    _vy=argument3;

return (_px*_vx+_py*_vy)/point_distance(0,0,_vx,_vy) 

