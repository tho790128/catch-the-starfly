if global.onda_cosmica && !global.vida <= 0
{
    
    if desastre_atual == 0
    {
        temp--
        if temp <= 0
        {
            var _posy = 0
            var _x = 0
            if modo == 0
            {
                _posy = random_range(1,room_height- 2)
                _x = irandom_range(16,room_width-16) 
            }
            else if modo == 1
            {
                _posy = obj_sapo.y
                _x = obj_sapo.x
            }
            else if modo == 2
            {
                _posy = obj_mosca.y
                _x = obj_mosca.x
            }
            
            
            var _estrela = instance_create_layer(_x,-32,"desastres",obj_estrela)
            _estrela.posy = _posy
            
            temp = max_temp
        }
    }
}

max_temp -= 0.1 * temp_fica

vai= global.onda_cosmica

if keyboard_check_pressed(vk_escape)
{
    global.pause = !global.pause
}