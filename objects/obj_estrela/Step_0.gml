temp--
if y < posy && temp <= 0
{
    y += 3
}

if y >= posy or !global.onda_cosmica or global.vida <= 0
{
    var _inpact = instance_create_layer(x,y,"sapo",obj_impact)
    _inpact.dano = 1
    instance_destroy()
}


