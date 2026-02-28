
if keyboard_check_pressed(ord("W"))
{
    index--
    dist = 0
}

if keyboard_check_pressed(ord("S"))
{
    index++
    dist = 0
}

dist = lerp(dist,20,0.1)

index = clamp(index,0,array_length(botoes)-1)



switch (index)
{
	case 0:
    if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
    {
        room_goto(rm_game)
    }
    break
    case 1:
    if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
    {
        game_end()
    }
    break
}