velh = 0
velv = 0
max_vel = 3






temp = 10
max_temp = 10



temp_vida = 0
max_temp_vida = 60

toma_dano = function(dano=1,idd)
{
    if temp_vida <= 0
    {
        global.vida -= dano
        
        var _dir = point_direction(x,y,idd.x,idd.y)
        
        velh += lengthdir_x(8,_dir - 180) 
        velv += lengthdir_y(8,_dir - 180) 
        
        temp_vida = max_temp_vida
        
        
    }
}

