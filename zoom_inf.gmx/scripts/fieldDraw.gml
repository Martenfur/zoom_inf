draw_set_color(baseColor)

draw_primitive_begin(pr_trianglefan)

for(var i=0; i<polygonCount i+=1)
{
  draw_vertex(x+lengthdir_x(radius*scale,rotation+polygonAngle*i),
              y+lengthdir_y(radius*scale,rotation+polygonAngle*i))
}

draw_primitive_end()


var _rr=point_distance(x,y,mouse_x,mouse_y),
    _aa=point_direction(x,y,mouse_x,mouse_y);

var arr=polarToField_xy(id,_rr,_aa);

if active
{
  draw_set_color(ringColor)

  for(var i=0; i<ringsAm i+=1)
  {
    with(rings[i])
    {ringDraw(other)}
  }
}


