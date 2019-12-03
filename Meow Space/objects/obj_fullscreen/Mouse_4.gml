/// @description SWITCH TO FULLSCREEN/WINDOWED

if can_switch
{
    resolution_switch();
    audio_play_sound(snd_fullscreen,5,0);
    can_switch = 0;
    alarm[0] = 20;
}

