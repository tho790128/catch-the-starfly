


var _dir = point_direction(x,y,obj_sapo.x,obj_sapo.y)
temp_dir--
if temp_dir <= 0
{
    var _dire = irandom(359)
    
    if !(_dire > _dir - 35 && _dire < _dir + 35)
    {
        velh = lengthdir_x(max_vel,_dire)
        velv = lengthdir_y(max_vel,_dire)
        
        temp_dir = max_temp_dir
    }
}

if !global.pause
{
    x += velh
    y += velv
    
    
}



if x > room_width + sprite_width/2 x = sprite_width/2
if x < 0 x = room_width + sprite_width/2
if y > room_height + sprite_height/2 y = sprite_height/2
if y < 0 y = room_height + sprite_height/2
    

temp_pego--
if place_meeting(x,y,obj_sapo) && temp_pego <= 0
{
    global.onda_cosmica = !global.onda_cosmica
    temp_pego = max_temp_pego
    instance_create_layer(x,y,"sapo",obj_impact)
    repeat(irandom_range(2,8))
    {
        instance_create_layer(x,y,"desastres",obj_fumaca)
    }
    
    if sprite_index == spr_mosca_dourada global.pontos ++
        
    
    
    
}

if global.onda_cosmica
{
    max_vel = 4
    sprite_index = spr_mosca_dourada
    
}
else
{
    max_vel = 2
    sprite_index = spr_mosca
}

if global.vida <= 0
{
    instance_destroy()
}

