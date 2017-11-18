///ringPressableDraw(field)

/*
Draws all masks for given ring.
*/

if ringMaskGetState(0)
{
  draw_set_color(parentField.ringAdditionalColor)
  ringMaskDraw(argument0,0)
}

draw_set_color(parentField.ringColor)
for(var i=1; i<ringMaskCount() i+=1)
{ringMaskDraw(argument0,i)}

