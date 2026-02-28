

if global.pause
{
    draw_set_alpha(0.5)
    draw_rectangle(0,0,320,180,false)
    draw_set_alpha(1)
    
    draw_set_font(fnt_pixel)
    
    for(var i = 0;i < array_length(botoes);i ++)
    {
        var _dist = 0
        if i == index
        {
            _dist = dist
        }
        draw_text(20 + _dist,60 + 25 * i,botoes[i])
        
        
    }

}