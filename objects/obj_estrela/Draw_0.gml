draw_self()

draw_sprite_ext(spr_alvo,0,x,posy,image_xscale,image_yscale,0,c_white,1)

var _temp = clamp(floor(temp / 60 + 1),0,50)

draw_set_halign(1)
draw_set_valign(1)

draw_text_transformed(x,posy,_temp,0.3,0.3,0)