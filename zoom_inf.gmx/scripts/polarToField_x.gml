///polarToField_x(field,angle)

/*
Converts screen coordinates into field coordinates for given field.
*/

with(argument0)
{
  var _a=angleBound(argument1-rotation);
  
  var _sectorId=_a div polygonAngle; 
  
  _a-=polygonAngle*_sectorId
  
  return (_a/polygonAngle+_sectorId)*field_w/polygonCount
}

