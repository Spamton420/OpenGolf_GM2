with (obj_player)
{
    if (grounded && (state == 62 || state == 63))
    {
        xscale = other.image_xscale;
        mach2 = 100;
        scr_sound(sound_throw);
        machhitAnim = 0;
        state = 83;
        flash = 1;
        sprite_index = spr_player_mach4;
        instance_create(x, y, obj_jumpdust);
        instance_create(x, y, obj_mach3effect1);
        instance_create(x, y, obj_mach3effect2);
        movespeed = 12;
    }
}
