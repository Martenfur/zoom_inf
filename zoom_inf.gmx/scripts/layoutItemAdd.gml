///layoutItemAdd(layout,hx,hy,vx,vy)

/*
Adds new item to the layout.
It is possible to give only 3 arguments to the function.
Then v and h variants will become the same.
*/

var _item=ds_list_create();

var _am=1+(argument_count==3); //If there are 3 args, repeat twice.

repeat(_am)
{
  for(var i=1; i<argument_count i+=1)
  {ds_list_add(_item,argument[i])}
}

ds_list_add(argument[0],_item)

return ds_list_size(argument[0])-1

