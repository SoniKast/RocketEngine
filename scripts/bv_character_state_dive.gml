/// bv_character_state_dive()
// Dive for Amy.

    if(state == CS_DIVE)
    {
        if(not(angle > 45 && angle < 310))
        { 
            if(ground)
            {
                animation_index = "DIVE END";
                if(x_speed > 0)
                {
                    x_speed--;
                }
                if(x_speed < 0)
                {
                    x_speed++;
                }
                if(floor(animation_frame) <= 3)
                {
                    if(!bv_audio_is_playing(_char_somersault_c))
                    {
                        bv_audio_play(_char_somersault_c, global.sfx_volume);
                    }
                }
                if(floor(animation_frame) >= 5)
                {
                    state = CS_DEFAULT;
                }
            }
        }
    }
    
    if(state == CS_SHORT_HOP && input_special_pressed)
    {
        state = CS_DIVE;
    }
