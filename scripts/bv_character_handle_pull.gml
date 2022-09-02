/// bv_character_handle_pull();
// Handle pull

    var pull;
    pull = bv_character_collision_check(COL_MAIN_OBJECT, x, y, instance_nearest(x, y, par_pull));
    
    // Collect rings.
    if(pull != noone)
    {
        if(pull_timer == -1 && pull_delay == 0)
        {
            x = pull.x;
            y = pull.y; 
            pull_timer = 15;
            pull_speed = 10;
            state = CS_PULL;
        }    
        pull.image_index = floor(animation_frame);
        // pull.image_speed = 
    }
            
