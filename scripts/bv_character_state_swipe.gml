/// bv_character_state_swipe()
 // Script to handle Tails swiping.
    if(state == CS_ROLL) {exit};
    if(ground && input_special_pressed && state != CS_SWIPE)
    {
        if(not(angle > 45 && angle < 310))
        { 
            with(instance_create(x, y, obj_swipe_effect))
            {
                image_xscale = other.animation_direction;
                image_angle = other.animation_angle;
            }
            bv_audio_play(_char_swipe, global.sfx_volume);
            state = CS_SWIPE;
            animation_index = "SWIPE";
            animation_frame = 0;
        }
    }
    if(state == CS_SWIPE)
    {
        x_speed = 0;
        if(floor(animation_frame) >= 7 || (angle > 45 && angle < 310))
        {
            state = CS_DEFAULT;
        }
    }
    
    
