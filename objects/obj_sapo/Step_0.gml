var _right = keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))
var _up = keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))






temp_vida --


if temp_vida > 0 image_blend = merge_color(image_blend, c_fuchsia, 0.1);
else image_blend = merge_color(image_blend, c_white, 0.1);

var _spd = max_vel



if (_left or _right) && (_up or _down)
{
    _spd = 2
}
if global.onda_cosmica
{
    velh = lerp(velh,(_right - _left) * _spd,0.1)
    velv = lerp(velv,(_down - _up) * _spd,0.1)
}
else 
{
	velh = lerp(velh,(_right - _left) * _spd,0.4)
    velv = lerp(velv,(_down - _up) * _spd,0.4)
}

temp_fumaca--
if velh != 0 or velv != 0
{
    sprite_index = spr_sapo_walk_frente
    
}

if _up
{
    sprite_index = spr_sapo_walk_tras
}

if velh = 0 && velv = 0
{
    sprite_index = spr_sapo_idle
}

if !global.pause
{
    
    x += velh
    y += velv
}

if _down or _left or _right or _up
{
    if temp_fumaca <= 0
    {
        instance_create_layer(x,y+4,"desastres",obj_fumaca)
        temp_fumaca = 10
    }
}
if temp_morreu > 0
{
    if x > room_width + sprite_width/2 x = sprite_width/2
    if x < 0 x = room_width + sprite_width/2
    if y > room_height + sprite_height/2 y = sprite_height/2
    if y < 0 y = room_height + sprite_height/2
}

    
x = round(x)
y = round(y)

if global.vida <= 0
{
    sprite_index = spr_sapo_queimado
    
    image_xscale = lerp(image_xscale,35,0.05)
    image_yscale = image_xscale
    if image_xscale <= 29 image_angle += 12
    
    if temp_morreu > 0
    {
        x = lerp(x,room_width/2,0.1)
        y = lerp(y,room_height/2,0.1)
    }
    
    
    image_blend = c_white
    
    max_vel = 0
    
    temp_morreu--
    if temp_morreu <= 0
    {
        y += 3
    }
    
    
}

