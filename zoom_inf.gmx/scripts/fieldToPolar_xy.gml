///fieldToPolar_xy(field,x,y)

with(argument0)
{
  var _coordinates;
  
  var _a=angleBound(argument1/field_w*360);
  
  _coordinates[0]=angleBound(_a+rotation)
  
  var _sectorId=_a div polygonAngle; 
  
  var _x0=middleVector[_sectorId,0]*argument2,
      _y0=middleVector[_sectorId,1]*argument2;
  
  var _v1x=lengthdir_x(1,_a),
      _v1y=lengthdir_y(1,_a),
      _v2x=-middleVector[_sectorId,1],
      _v2y=middleVector[_sectorId,0];
   
      
  _coordinates[1]=((_y0*_v2x)-(_x0*_v2y))/((_v2x*_v1y)-(_v2y*_v1x))*scale
  
  return _coordinates
}
