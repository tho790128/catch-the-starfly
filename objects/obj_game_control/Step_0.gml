if global.onda_cosmica
{
    
    if desastre_atual == 0
    {
        temp--
        if temp <= 0
        {
            var _posy = random_range(1,room_height- 2)
            var _x = irandom_range(16,room_width-16)
            var _estrela = instance_create_layer(_x,-32,layer,obj_estrela)
            _estrela.posy = _posy
            
            temp = 1
        }
    }
}

max_temp -= 0.1 * temp_fica

vai= global.onda_cosmica