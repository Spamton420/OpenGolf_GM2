with (obj_player)
{
    if (key_up && (state == 0 || state == 62 || state == 63 || state == 83 || state == 58) && y == (other.y + 50) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != 71 && state != 54)
    {
        mach2 = 0;
        obj_camera.chargecamera = 0;
        ds_list_add(global.saveroom, id);
        player_y = other.target_y;
        player_x = other.target_x;
        targetRoom = other.targetRoom;
        other.visited = 1;
        image_index = 0;
        state = 71;
        instance_create(x, y, obj_fadeout);
    }
}
