
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

draw_text(200,50,"ultima")

draw_text(235,70,ultimo_pontos)

draw_text(200,100,"maxima")

draw_text(235,120,global.max_pontos)