///ringMaskDraw(field,ring,mask_id)

var _field=argument0,
    _ring=argument1,
    _maskId=argument2;

draw_primitive_begin(pr_trianglestrip)

var _mx,_mw;
with(_ring)
{
  _mx=ringMaskGet_x(_maskId)
  _mw=ringMaskGet_w(_maskId)
}

var _sector1Id=_mx div (_field.field_w/_field.polygonCount),
    _sector2Id=(_mx+_mw) div (_field.field_w/_field.polygonCount);


var _polar1=fieldToPolar_xy(_field,_mx,_ring.y);
var _polar2=fieldToPolar_xy(_field,_mx,_ring.y+_ring.h);
show_debug_message(_polar1[1])

draw_vertex(_field.x+lengthdir_x(_polar1[1],_polar1[0]),
            _field.y+lengthdir_y(_polar1[1],_polar1[0]))
draw_vertex(_field.x+lengthdir_x(_polar2[1],_polar2[0]),
            _field.y+lengthdir_y(_polar2[1],_polar2[0]))

for(var i=1+_sector1Id; i<=_sector2Id i+=1)
{
/*
  _polar1=fieldToPolar_xy(_field,i*_field.field_w/_field.polygonCount,_ring.y);
  _polar2=fieldToPolar_xy(_field,i*_field.field_w/_field.polygonCount,_ring.y+_ring.h);

  draw_vertex(_field.x+lengthdir_x(_polar1[1],_polar1[0]),
             _field.y+lengthdir_y(_polar1[1],_polar1[0]))
  draw_vertex(_field.x+lengthdir_x(_polar2[1],_polar2[0]),
             _field.y+lengthdir_y(_polar2[1],_polar2[0]))
*/    
  draw_vertex(x+lengthdir_x(radius*scale,rotation+polygonAngle*i),
              y+lengthdir_y(radius*scale,rotation+polygonAngle*i))
        
}


_polar1=fieldToPolar_xy(_field,_mx+_mw,_ring.y)
_polar2=fieldToPolar_xy(_field,_mx+_mw,_ring.y+_ring.h)

draw_vertex(_field.x+lengthdir_x(_polar1[1],_polar1[0]),
            _field.y+lengthdir_y(_polar1[1],_polar1[0]))
draw_vertex(_field.x+lengthdir_x(_polar2[1],_polar2[0]),
            _field.y+lengthdir_y(_polar2[1],_polar2[0]))


draw_primitive_end()

