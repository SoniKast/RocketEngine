/// bv_character_state_airdash();
 // Air dash state.
   
    // Air dashing:
    if(state == CS_JUMP)
    {
        if(input_left_pressed && input_left_count = 2)
        {
            state    = CS_AIR_DASH;
            if(player_state = PLAYER_NORMAL)
            {
                x_speed -= 3;
            }
            else 
            if(player_state = PLAYER_SUPER)
            {
                x_speed -= 3*2;
            }
            // Play sound effect:     
            bv_audio_play(_char_air_dash, global.sfx_volume);
        }
        if(input_right_pressed && input_right_count = 2)
        {
            state    = CS_AIR_DASH;
            if(player_state = PLAYER_NORMAL)
            {
                x_speed += 3;
            }
            else 
            if(player_state = PLAYER_SUPER)
            {
                x_speed += 3*2;
            }
            // Play sound effect:
            bv_audio_play(_char_air_dash, global.sfx_volume);   
        }
    }
    
    if(state = CS_AIR_DASH && ground)
    {
        state = CS_DEFAULT;   
    }
