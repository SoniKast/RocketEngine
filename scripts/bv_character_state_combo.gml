/// bv_character_state_combo()
 // Combo state.
    if(state == CS_ROLL) {exit};
    
    // Check if you're grounded and you're comboing
    if(ground && input_special_pressed && input_special_count = 1 && state != CS_COMBO)
    {
        x_speed += 1*animation_direction;
        if(!bv_audio_is_playing(_char_punch))
        {
            bv_audio_play(_char_punch, global.sfx_volume);
        }
        animation_index = "COMBO A";
        animation_frame = 0;
        combo_state = 1;
        state = CS_COMBO;
    }  
    
    if(state = CS_COMBO)
    {
        if(ground && input_special_pressed && input_special_count = 2)
        {
             if(!bv_audio_is_playing(_char_punch))
             {
                 bv_audio_play(_char_punch, global.sfx_volume);
             }
             animation_index = "COMBO B";
             animation_frame = 0;
             x_speed += 0.5*animation_direction;
             combo_state = 2;
        }
        if(ground && input_special_pressed && input_special_count = 3)
        {
            if(!bv_audio_is_playing(_char_uppercut))
            {
                bv_audio_play(_char_uppercut, global.sfx_volume);
            }
            animation_index = "COMBO FINISH";    
            x_speed = 2*animation_direction;
            combo_state = 3;
        }
        switch(combo_state)
        {
            case 1:
                if(floor(animation_frame) = 4)
                {
                    x_speed = 0;   
                }
                if(x_speed = 0)
                {
                    state = CS_DEFAULT;
                    animation_index = "STAND";
                }
            break;
            case 2:
                if(floor(animation_frame) = 4)
                {
                    x_speed = 0;   
                }
                if(x_speed = 0)
                {
                    state = CS_DEFAULT;
                    animation_index = "STAND";
                }
            break;
            case 3:
                if(animation_index == "COMBO FINISH" && floor(animation_frame) == 2)
                {
                    ground = false;
                    y_speed = -2;
                }
                if(floor(animation_frame) > 4 && ground)
                {
                    state = CS_DEFAULT;
                    animation_index = "STAND";
                }
            break;
        }
    }
