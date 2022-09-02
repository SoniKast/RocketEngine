/// bv_stage_set_data(zone_name, zone_act, zone_music, zone_water, zone_water_position, zone_death_position, zone_id, zone_music_loop_start, zone_music_loop_end, zone_music_hz)
 // Set the data for a stage, used in bv_stage_initialization().
 
    if(argument_count == 7)
    {
       zone_name             = argument[0];
       zone_act              = argument[1];
       zone_music            = argument[2];
       zone_music_loop_start = -1;
       zone_music_loop_end   = -1;      
       zone_music_hz         = -1;       
       zone_water            = argument[3];
       zone_water_position   = argument[4];
       zone_death_position   = argument[5];
       zone_id               = argument[6];
    }
    else if(argument_count > 7)
    {
       zone_name             = argument[0];
       zone_act              = argument[1];
       zone_music            = argument[2];
       zone_music_loop_start = argument[7];
       zone_music_loop_end   = argument[8];
       zone_music_hz         = argument[9];       
       zone_water            = argument[3];
       zone_water_position   = argument[4];
       zone_death_position   = argument[5];
       zone_id               = argument[6];
    }

 // Create stage elements (such as the culling controller and the title card)
    instance_create(0, 0, ctr_culling);
    instance_create(0, 0, obj_title_card);
    instance_create(0, 0, obj_hud);
    instance_create(0, 0, obj_pause_screen);
   
 // If the stage has background music, play it,
    bv_stage_play_bgm(room, zone_music, zone_music_loop_start, zone_music_loop_end, zone_music_hz);
