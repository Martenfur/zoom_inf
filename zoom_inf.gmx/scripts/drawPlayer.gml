///drawPlayer(field)

var _c=fieldToPolar_xy(argument0,x,y);
var _c1=fieldToPolar_xy(argument0,x,yprevious);


var _lx=lengthdir_x(1,_c[0]),
    _ly=lengthdir_y(1,_c[0]);
var _size=size*argument0.scale;
    
draw_triangle(world_x(argument0.x+_lx*_c[1]),
              world_y(argument0.y+_ly*_c[1]),
              
              world_x(argument0.x+_lx*(_c1[1]+_size)+_ly*_size),
              world_y(argument0.y+_ly*(_c1[1]+_size)-_lx*_size),
              
              world_x(argument0.x+_lx*(_c1[1]+_size)-_ly*_size),
              world_y(argument0.y+_ly*(_c1[1]+_size)+_lx*_size),
              0
)

