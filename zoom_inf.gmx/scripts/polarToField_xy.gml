///polarToField_xy(field,r,a)


with(argument0)
{
  var _coordinates;
  
  var _a=valueBound(argument2-rotation,360);
  
  var _sectorId=_a div polygonAngle; 
  
  _coordinates[0]=((_a-polygonAngle*_sectorId)/polygonAngle+_sectorId)*field_w/polygonCount
  
  /////////////////////////////////////////////////////////
  var _x,_y;
  _x=lengthdir_x(argument1/scale,_a)
  _y=lengthdir_y(argument1/scale,_a)
  
  _coordinates[1]=proj(_x,_y,middleVector[_sectorId,0]*middleVectorL,middleVector[_sectorId,1]*middleVectorL)/middleVectorL*field_h
  
  return _coordinates
}


