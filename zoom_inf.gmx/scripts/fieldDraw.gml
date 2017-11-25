

draw_set_color(baseColor)

draw_primitive_begin(pr_trianglefan)

for(var i=0; i<polygonCount i+=1)
{
  draw_vertex(x+lengthdir_x(radius*scale,rotation+polygonAngle*i),
              y+lengthdir_y(radius*scale,rotation+polygonAngle*i))
}

draw_primitive_end()

if state
{
  for(var i=0; i<ringsAm i+=1)
  {
    with(rings[i])
    {script_execute(drawEvent,other)}
  }
}


