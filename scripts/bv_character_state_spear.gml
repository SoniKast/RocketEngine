/// bv_character_state_spear()
 // Script to handle Shadow's spear.
    if(state == CS_ROLL) {exit};
    
    if(ground && input_special_pressed && state != CS_SPEAR)
    {   
        if(not(angle > 45 && angle < 310))
        { 
            state = CS_SPEAR;
            animation_index = "SPEAR";
            animation_frame = 0;
        }
    }
    if(state == CS_SPEAR)
    {
        x_speed = 0;
        if(floor(animation_frame) >= 2 || (angle > 45 && angle < 310))
        {
            if(instance_number(obj_chaos_spear) <= 2)
            {
                with(instance_create(x, y, obj_chaos_spear))
                {
                    x_speed = 7*other.animation_direction;
                    image_xscale = other.animation_direction;
                }
            }
            state = CS_DEFAULT;
        }
    }
