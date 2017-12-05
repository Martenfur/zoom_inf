///fieldToPolar_xy(field,x,y)

with(argument0)
{
  var _coordinates;
  
  var _a=valueBound(argument1/field_w*360,360);
  
  _coordinates[0]=valueBound(_a+rotation,360)
  
  var _sectorId=_a div polygonAngle; 
  if _sectorId>=polygonCount
  {_sectorId-=polygonCount}
  
  var _x0=middleVector[_sectorId,0]/field_h*middleVectorL*argument2,
      _y0=middleVector[_sectorId,1]/field_h*middleVectorL*argument2;
  
  var _v1x=lengthdir_x(1,_a),
      _v1y=lengthdir_y(1,_a),
      _v2x=-middleVector[_sectorId,1],
      _v2y=middleVector[_sectorId,0];
      
  _coordinates[1]=(((_y0*_v2x)-(_x0*_v2y))/((_v2x*_v1y)-(_v2y*_v1x)))*scaleRes/field_h*radius
  
  if _coordinates[1]<0
  {_coordinates[1]=0}
  
  return _coordinates
}
