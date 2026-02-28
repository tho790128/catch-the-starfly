if global.vida <= 0
{
    draw_set_halign(1)
    draw_text(room_width/2,20,"game over :(")
    draw_set_halign(-1)
    draw_text(20,60,"pontos: " + string(global.pontos))
    draw_text(20,85,"maximo: " + string(global.max_pontos) )
    
    draw_text_transformed(room_width - 160,room_height - 50,"continue",1.5,1.5,0)
    
    draw_text_transformed(room_width - 160,room_height - 20,"press space/enter",0.5,0.5,0)
    
    if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
    {
        room_goto(rm_menu)
    }
}


draw_self()