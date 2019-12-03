///SET NEW RESOLUTION

var rs = obj_control.res_selected;
with(obj_resolution)
{
    if !window_get_fullscreen() && rs != cur_res_id
    {
        if res_list[rs,0] > dsp_width || res_list[rs,1] > dsp_height
        audio_play_sound(snd_bad,5,0);
        else
        {
            audio_play_sound(snd_apply,5,0);
            resolution_set(rs);
        }
    }
}

