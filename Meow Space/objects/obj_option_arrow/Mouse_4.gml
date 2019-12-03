/// @description CHANGE SELECTED RESOLUTION

if !window_get_fullscreen()
{
    if sprite_index = spr_arrow_left
    {
        if obj_control.res_selected > 0
        {
            obj_control.res_selected--;
            audio_play_sound(snd_arrow,5,0);
        }
    }
    else
    {
        if obj_control.res_selected < array_height_2d(obj_resolution.res_list)-1
        {
            obj_control.res_selected++;
            audio_play_sound(snd_arrow,5,0);
        }
    }
}

