///ringMaskAdd(x,w)

/*
Adds new mask to the ring and returns its id.
0 - x
1 - w
2 - state
  0 - disabled
  1 - enabled
*/

ds_list_add(masks,argument0,argument1,1)

return ds_list_size(masks)/_RING_MASK_STRUCT_SIZE-1

