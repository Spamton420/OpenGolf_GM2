function scr_player_mach1()
{
	dir = xscale;
	move = key_left + key_right;
	landAnim = 0;
	
	if (scr_solid(x + 1, y) && xscale == 1 && !place_meeting(x + 1, y, obj_slope))
	{
	    mach2 = 0;
	    state = 0;
	    movespeed = 0;
	}
	
	if (scr_solid(x - 1, y) && xscale == -1 && !place_meeting(x - 1, y, obj_slope))
	{
	    mach2 = 0;
	    state = 0;
	    movespeed = 0;
	}
	
	if (movespeed <= 8)
	    movespeed += 0.25;
	
	machhitAnim = 0;
	crouchslideAnim = 1;
	
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	    hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
	    hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = (xscale * movespeed) + 5;
	
	if (grounded && xscale == 1 && move == -1)
	{
	    momemtum = 0;
	    mach2 = 0;
	    movespeed = 0;
	    image_index = 0;
	    xscale = -1;
	}
	
	if (grounded && xscale == -1 && move == 1)
	{
	    momemtum = 0;
	    mach2 = 0;
	    movespeed = 0;
	    image_index = 0;
	    xscale = 1;
	}
	
	if (grounded)
	{
	    if (mach2 < 35)
	        mach2++;
	    
	    if (mach2 >= 35)
	    {
	        movespeed = 10;
	        state = 63;
	        instance_create(x, y, obj_jumpdust);
	    }
	}
	
	sprite_index = spr_mach1;
	
	if (!grounded)
	{
	    sprite_index = spr_airdash1;
	    momemtum = 1;
	    state = 51;
	    jumpAnim = 0;
	    image_index = 0;
	}
	
	if (!key_attack && grounded)
	{
	    state = 0;
	    image_index = 0;
	    mach2 = 0;
	}
	
	if (key_down)
	{
	    sprite_index = spr_crouchslip;
	    state = 61;
	    mach2 = 0;
	}
	
	image_speed = 0.45;
	
	if (key_jump && grounded && key_attack)
	{
	    scr_sound(sound_jump);
	    sprite_index = spr_airdash1;
	    dir = xscale;
	    momemtum = 1;
	    vsp = -11;
	    movespeed += 2;
	    state = 51;
	    jumpAnim = 1;
	    image_index = 0;
	}
	
	if (!instance_exists(obj_dashcloud) && grounded)
	    instance_create(x, y, obj_dashcloud);
	
	if (key_slap2 && !key_down && suplexmove == 0)
	{
	    instance_create(x, y, obj_slaphitbox);
	    suplexmove = 1;
	    vsp = 0;
	    instance_create(x, y, obj_jumpdust);
	    image_index = 0;
	    sprite_index = spr_suplexdash;
	    state = 15;
	    
	    if (character == "N")
	        vsp = -5;
	}
	else if (key_slap2 && key_down)
	{
	    taunttimer = 20;
	    tauntstoredmovespeed = movespeed;
	    tauntstoredsprite = sprite_index;
	    tauntstoredstate = state;
	    state = 44;
	    image_index = random_range(0, 6);
	    sprite_index = spr_player_taunt;
	    instance_create(x, y, obj_taunteffect);
	}
	
	if (key_shoot2)
	{
	    vsp = -4;
	    sprite_index = spr_player_pistolair;
	    state = 32;
	    image_index = 0;
	    shoot = 1;
	}
}
