///strToColor(color_str)

/*
Converts color string in HEX to actual color value.
Example: "FFFFFF" => $FFFFFF
*/



var _color,_d1,_d2;
for(var i=0; i<3 i+=1)
{
  
  var _num=string_copy(argument0,i*2+1,2);
  
  //Let's just stop for a second and thank ASCII table devs 
  //for putting some random chars between 9 and A.
  _d1=ord(string_char_at(_num,1))-ord('0')
  if _d1>=16
  {_d1-=7}
  _d2=ord(string_char_at(_num,2))-ord('0')
  if _d2>=16
  {_d2-=7}
  
  _color[i]=_d1*16+_d2
  //show_message(chr(ord('0')+11))
  //show_message(ord(string_char_at(_num,2))-ord('0'))
  
}

return make_color_rgb(_color[0],_color[1],_color[2])

