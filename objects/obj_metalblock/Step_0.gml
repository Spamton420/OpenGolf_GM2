if (obj_player.character == "N")
    instance_destroy();

if (place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x + 1, y, obj_player))
{
    if ((place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player)) && (obj_player.state == 83 || obj_player.state == 17 || obj_player.state == 11 || obj_player.state == 2 || obj_player.state == 30 || (obj_player.state == 17 && obj_player.momemtum == 1)))
        instance_destroy();
    
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 17 || obj_player.state == 2 || obj_player.state == 70))
    {
        instance_destroy();
        tile_layer_delete_at(1, x, y);
    }
    
    if (place_meeting(x, y + 40, obj_player) && obj_player.state == 56)
        instance_destroy();
}
