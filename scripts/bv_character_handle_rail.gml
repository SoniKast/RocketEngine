/// bv_character_handle_rail()
 // RAILS!

    var rail;
        rail = instance_nearest(x, y, par_rail);

    if(character_id = CHAR_SONIC || character_id = CHAR_AMY || character_id = CHAR_SHADOW)
    {
        if(state = CS_JUMP && input_down_pressed)
        {
            rail_collision = true;
         // rail_timer = 50;
        } 
        if(rail != noone)
        {
            if(rail_collision = true && bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, rail)) 
            {
                if(state != CS_GRIND)
                {
                    state = CS_GRIND;
                    x_speed = 1;
                    bv_audio_play(_general_rail_hit, global.sfx_volume);
                }
                else
                {
                    bv_character_set_angle(0);
                    animation_direction = 1;
                    switch(rail.rail_type)
                    {
                        case "LOWER":
                        bv_apply_animation("GRIND LOWER");    
                        break;
                        case "HIGHER":
                        bv_apply_animation("GRIND");
                        break;
                    }  
                }
            }
            if(state == CS_GRIND && rail = noone)
            {
                state = CS_DEFAULT;
                bv_audio_stop(_general_rail_hit);
            }
        }
    }
    /*
    if(rail_timer > 0)
    {
        rail_timer --;
    }
    else
    {
        rail_timer = -1;
        rail_collision = false;
    }
