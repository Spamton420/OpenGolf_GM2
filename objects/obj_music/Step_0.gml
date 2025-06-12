if (jingle == 0)
{
    if (room == Realtitlescreen)
        currentlyplaying = music_title;
    
    if (global.panic == 0)
    {
        switch (room)
        {
            case PP_room1:
                currentlyplaying = music_funiculi;
                break;
            
            case hub_room1:
                currentlyplaying = music_onepizzaatatimeremix;
                break;
            
            case floor1_room0:
                currentlyplaying = music_desert;
                break;
            
            case floor2_room0:
                currentlyplaying = music_coldspag;
                break;
            
            case floor3_room0:
                currentlyplaying = music_factory2;
                break;
            
            case floor4_room0:
                currentlyplaying = music_sewer;
                break;
            
            case floor5_room1:
                currentlyplaying = music_freezer;
                break;
            
            case golf_room1:
                currentlyplaying = music_funiculi;
                break;
        }
        
        if (instance_exists(obj_noise_pushbutton) && obj_player.sprite_index != spr_player_idle)
            currentlyplaying = music_knight;
        
        if (instance_exists(obj_noise_pushbutton))
        {
            if (obj_noise.hspeed != 0)
                currentlyplaying = music_noiseappear;
        }
    }
}

if (instance_exists(obj_player) && obj_player.state != 57 && room != rank_room && room != timesuproom && obj_player.state != 16 && obj_player.sprite_index != obj_player.spr_Timesup)
    jingle = 0;

if (global.panic == 1 && jingle == 0)
    currentlyplaying = music_escapeN;

if (jingle == 0)
{
    if (!audio_is_playing(currentlyplaying))
    {
        audio_stop_all();
        scr_sound(currentlyplaying);
    }
    
    if (audio_is_paused(currentlyplaying))
    {
        audio_pause_all();
        audio_resume_sound(currentlyplaying);
    }
}

if (room == rank_room)
{
    jingle = 1;
    audio_stop_sound(currentlyplaying);
    
    if (global.rank == "s")
    {
        if (!audio_is_playing(music_ranks))
            audio_play_sound(music_ranks, 1, false);
    }
    else if (global.rank == "a")
    {
        if (!audio_is_playing(music_ranka))
            audio_play_sound(music_ranka, 1, false);
    }
    else if (global.rank == "b" || global.rank == "c")
    {
        if (!audio_is_playing(music_rankb))
            audio_play_sound(music_rankb, 1, false);
    }
    else if (global.rank == "d")
    {
        if (!audio_is_playing(music_rankd))
            audio_play_sound(music_rankd, 1, false);
    }
}

if (room == timesuproom)
{
    audio_stop_all();
    jingle = 1;
}
