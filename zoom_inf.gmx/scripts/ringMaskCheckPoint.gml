///ringMaskCheckPoint(x,y,mask_id)

var _x=argument0,
    _y=argument1,
    _maskId=argument2;
    

var _mx=ringMaskGet_x(_maskId),
    _mw=ringMaskGet_w(_maskId); 

_mx-=(_mx div FIELD_INTERNAL_W)*FIELD_INTERNAL_W

if point_in_rectangle(_x,_y,_mx,y,_mx+_mw,y+h)
{return 1}
else
{
  if _mx<0
  {return point_in_rectangle(_x,_y,_mx+FIELD_INTERNAL_W,y,_mx+_mw+FIELD_INTERNAL_W,y+h)}
  else
  {
    if _mx+_mw>FIELD_INTERNAL_W
    {return point_in_rectangle(_x,_y,_mx-FIELD_INTERNAL_W,y,_mx-FIELD_INTERNAL_W+_mw,y+h)}
  }
}

return 0
