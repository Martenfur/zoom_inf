///scrUpdate()

/*
Updates all the essential vars of screen, appsurf, view and other stuff.
*/


if fullscreen
{
  scr_w=display_get_width()
  scr_h=display_get_height()
  window_set_fullscreen(1)
}
else
{
  scr_w=window_w
  scr_h=window_h
  window_set_size(scr_w,scr_h)
}

if scr_w>scr_h
{scr_orientation=1} //Horizontal.
else
{scr_orientation=0} //Vertical.


view_wview[0]=scr_w
view_hview[0]=scr_h
view_wport[0]=scr_w
view_hport[0]=scr_h

surface_resize(application_surface,scr_w,scr_h)


world_side_max=max(scr_w,scr_h)
world_side_min=min(scr_w,scr_h)

world_scale=world_side_min*(2/3)/(FIELD_INTERNAL_H*2)

world_w=scr_w/world_scale
world_h=scr_h/world_scale
world_side_max/=world_scale
world_side_min/=world_scale


//Central point of the screen.
cx=world_w/2
cy=world_h/2
//Central point of the screen.

