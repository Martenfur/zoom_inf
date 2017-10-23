///screenToField_xy(field,scr_x,scr_y)

/*
Converts screen coordinates into field coordinates for given field.
*/

var _field=argument0,
    _scr_x=argument1,
    _scr_y=argument2;


__f_x=0
__f_y=0

with(_field)
{
  var _r=point_distance(x,y,_scr_x,_scr_y)/scale,
      _a=angleBound(point_direction(x,y,_scr_x,_scr_y)-rotation);
  
  other.__f_y=field_h*(_r/radius)
  
  var _sectorId=_a div polygonAngle;
  
  _a-=polygonAngle*_sectorId
  
  other.__f_x=(_a/polygonAngle+_sectorId)*field_w/polygonCount
}

