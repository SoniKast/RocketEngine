/// bv_character_state_sommersault();
 // Sommersault state.
    if(state == CS_ROLL) {exit};
    
    // Check if you're grounded and you're sommersaulting
    if(ground && input_special_pressed && input_special_count = 1 && state != CS_SOMMERSAULT)
    {
        x_speed = 4*animation_direction;
        animation_index = "SOMMERSAULT A";
        if(!bv_audio_is_playing(_char_roll))
        {
            bv_audio_play(_char_roll, global.sfx_volume);
        }
        animation_frame = 0;
        sommersault_state = 1;
        state = CS_SOMMERSAULT;
    }  
    
    if(state = CS_SOMMERSAULT)
    {
        if(ground && input_special_pressed && input_special_count = 2)
        {
             if(!bv_audio_is_playing(_char_somersault_b))
             {
                 bv_audio_play(_char_somersault_b, global.sfx_volume);
             }
             animation_index = "SOMMERSAULT B";
             animation_frame = 0;
             x_speed = 3*animation_direction; 
             sommersault_state = 2;
        }
        if(ground && input_special_pressed && input_special_count = 3)
        {
            if(!bv_audio_is_playing(_char_somersault_c))
            {
                bv_audio_play(_char_somersault_c, global.sfx_volume);
            }
            animation_index = "SLIDE";     
            animation_frame = 0;
            x_speed = 4*animation_direction;
            sommersault_state = 3;
        }
        switch(sommersault_state)
        {
            case 2:
            if(floor(animation_frame) = 10)
            {
                x_speed = 0;   
            }
            if(x_speed = 0)
            {
                state = CS_DEFAULT;
                animation_index = "STAND";
            }
            break;
            case 1:
            case 3:
            if(x_speed > 0)
            {
                x_speed -= 0.1;
            }
            if(x_speed < 0)
            {
                x_speed += 0.1;
            }
            if(x_speed = 0)
            {
                state = CS_DEFAULT;
                animation_index = "STAND";
            }
            break;
        }
    }
