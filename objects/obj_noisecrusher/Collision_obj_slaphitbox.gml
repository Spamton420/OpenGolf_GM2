if (invframes == 0 && state == 98)
{
    scr_sound(sound_slaphit);
    instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);
    state = 101;
    obj_player.state = 39;
    instance_destroy(other.id);
    obj_player.suplexhavetomash = 5;
    obj_player.sprite_index = spr_player_grab;
}
