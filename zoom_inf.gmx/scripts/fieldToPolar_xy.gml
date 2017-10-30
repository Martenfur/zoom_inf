///fieldToPolar_xy(field,x,y)

with(argument0)
{
  var _coordinates;
  
  var _a=valueBound(argument1/field_w*360,360);
  
  _coordinates[0]=valueBound(_a+rotation,360)
  
  var _sectorId=_a div polygonAngle; 
  
  var _x0=middleVector[_sectorId,0]/field_h*middleVectorL*argument2,
      _y0=middleVector[_sectorId,1]/field_h*middleVectorL*argument2;
  
  var _v1x=lengthdir_x(1,_a),
      _v1y=lengthdir_y(1,_a),
      _v2x=-middleVector[_sectorId,1],
      _v2y=middleVector[_sectorId,0];
      
  draw_set_color(c_yellow)
  draw_line(x,y,x+_x0,y+_y0)
  draw_line(x+_x0,y+_y0,x+_x0+_v2x*8,y+_y0+_v2y*8)
  
  draw_set_color(c_green)
  draw_line(x,y,x+_v1x*64,y+_v1y*64)
  
  draw_set_color(c_white)
      
  _coordinates[1]=(((_y0*_v2x)-(_x0*_v2y))/((_v2x*_v1y)-(_v2y*_v1x)))*scale/field_h*middleVectorL
  
  return _coordinates
}
