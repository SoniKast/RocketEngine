/// bv_character_state_short_hop()
// Short Hop

    if(state == CS_SHORT_HOP)
    {
        if(ground)
        {
            state = CS_DEFAULT;
        }
    }
    
    if(state == CS_CROUCH && input_action_pressed)
    {
        ground = false;
        y_speed = -1.5;
        x_speed = 5*animation_direction;
        state = CS_SHORT_HOP;
        if(bv_audio_is_playing(_char_jump) == 1)
        {
           bv_audio_stop(_char_jump); 
        }   
        bv_audio_play(_char_jump, global.sfx_volume); 
    }
