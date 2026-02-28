global.onda_cosmica = false

ultimo_pontos = global.pontos



if global.pontos > global.max_pontos
{
    global.max_pontos = global.pontos
    global.pontos = 0
}



botoes = ["play","exit"]

index = 0

dist = 0