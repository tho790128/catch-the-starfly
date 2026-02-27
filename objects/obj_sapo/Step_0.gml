var _right = keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))
var _up = keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))







temp_vida --


if temp_vida > 0 image_blend = lerp(image_blend,c_aqua,0.1)
else image_blend = lerp(image_blend,c_white,0.1)

var _spd = max_vel

if (_left or _right) && (_up or _down)
{
    _spd = 2
}

velh = (_right - _left) * _spd
velv = (_down - _up) * _spd

x += velh
y += velv

if x > room_width + sprite_width/2 x = sprite_width/2
if x < 0 x = room_width + sprite_width/2
if y > room_height + sprite_height/2 y = sprite_height/2
if y < 0 y = room_height + sprite_height/2
    
x = round(x)
y = round(y)