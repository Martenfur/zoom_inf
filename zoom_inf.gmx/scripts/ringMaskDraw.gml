///ringMaskDraw(field,mask_id)

var _field=argument0,
    _maskId=argument1;

if keyboard_check(ord('S'))
draw_primitive_begin(pr_linestrip)
else
draw_primitive_begin(pr_trianglestrip)

var _mx,_mw;
_mx=ringMaskGet_x(_maskId)
_mw=ringMaskGet_w(_maskId)

while(_mx<0)
{_mx+=FIELD_INTERNAL_W}

var _sector1Id=_mx div (_field.field_w/_field.polygonCount),
    _sector2Id=(_mx+_mw) div (_field.field_w/_field.polygonCount);


var _polar1=fieldToPolar_xy(_field,_mx,y);
var _polar2=fieldToPolar_xy(_field,_mx,y+h);

draw_vertex(_field.x+lengthdir_x(_polar1[1]*distortion,_polar1[0]),
            _field.y+lengthdir_y(_polar1[1]*distortion,_polar1[0]))
draw_vertex(_field.x+lengthdir_x(_polar2[1]*distortion_h,_polar2[0]),
            _field.y+lengthdir_y(_polar2[1]*distortion_h,_polar2[0]))


var _lx,_ly,_y,_yh;
_y=max(0,y)*distortion
_yh=max(0,y+h)*distortion_h

for(var i=1+_sector1Id; i<=_sector2Id i+=1)
{
  _lx=lengthdir_x(_field.radius*_field.scale/_field.field_h,
                  _field.rotation+_field.polygonAngle*i)
  _ly=lengthdir_y(_field.radius*_field.scale/_field.field_h,
                  _field.rotation+_field.polygonAngle*i)
              
  draw_vertex(_field.x+_lx*_y,_field.y+_ly*_y)
  draw_vertex(_field.x+_lx*_yh,_field.y+_ly*_yh)
}

_polar1=fieldToPolar_xy(_field,_mx+_mw,y)
_polar2=fieldToPolar_xy(_field,_mx+_mw,y+h)

draw_vertex(_field.x+lengthdir_x(_polar1[1]*distortion,_polar1[0]),
            _field.y+lengthdir_y(_polar1[1]*distortion,_polar1[0]))
draw_vertex(_field.x+lengthdir_x(_polar2[1]*distortion_h,_polar2[0]),
            _field.y+lengthdir_y(_polar2[1]*distortion_h,_polar2[0]))


draw_primitive_end()

