if room == rm_game
{
    if instance_exists(obj_bg)
    {
        if obj_bg.image_index == 0
        {
           if !audio_is_playing(snd_new_world)
           {
                if audio_is_playing(snd_galaxy_bounce)                 audio_stop_sound(snd_galaxy_bounce)
                
            
                var _nova_musica = audio_play_sound(snd_new_world, 0, true)
                audio_sound_gain(_nova_musica, 0, 0)
                audio_sound_gain(_nova_musica,1,1000)
           }
            
        }
        if obj_bg.image_index == 1
        {
            if !audio_is_playing(snd_galaxy_bounce)
            {
                if audio_is_playing(snd_new_world) audio_stop_sound(snd_new_world)
                    
                
                var _nova_musica = audio_play_sound(snd_galaxy_bounce, 0, true)
                audio_sound_gain(_nova_musica, 0, 0)
                audio_sound_gain(_nova_musica,1,1000)
            }
        }
    }
}

if room == rm_menu
{
    if !audio_is_playing(snd_galaxy_bounce)
    {
        if audio_is_playing(snd_new_world) audio_stop_sound(snd_new_world)
    
      
      var _nova_musica = audio_play_sound(snd_galaxy_bounce, 0, true)
      audio_sound_gain(_nova_musica, 0, 0)
      audio_sound_gain(_nova_musica,1,1000)
    }
    
    
    
    
}