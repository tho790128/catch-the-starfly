temp--
if y < posy && temp <= 0
{
    y += 3
}

if y >= posy
{
    instance_create_layer(x,y,layer,obj_impact)
    instance_destroy()
}
