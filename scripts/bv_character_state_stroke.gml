/// bv_character_state_stroke()
// Knuckles's stroke action.
if(y >= stg.zone_water_position+48) {exit};

if (y_speed <= 6 && state == CS_JUMP && state != CS_STROKE)
{
    if(y >= stg.zone_water_position)
    {
        if(y != stg.zone_water_position)
        {
            y_speed -= 0.1;
            if (y >= stg.zone_water_position - 1 && y <= stg.zone_water_position + 1) && (y_speed >= -1 && y_speed <= 1) 
            {
                y = stg.zone_water_position - 1; // Stops the character from drowning
                state = CS_STROKE;
            }
        }
    }
}
    
if(state == CS_STROKE) 
{
    y_speed = 0;
    y = stg.zone_water_position - 2 + sin(current_time/100); // Little float animation
    
    if(input_right)
    {
        x_speed = lerp(x_speed, 2, 0.1);
    }
    if(input_left)
    {
        x_speed = lerp(x_speed, -2, 0.1);
    }

    // Jump
    if(input_action_pressed) 
    { 
        state = CS_JUMP;
        y_speed = -3;
        bv_audio_play(_char_jump, global.sfx_volume);
    }
    // Sink down 
    if(input_down) 
    { 
        state = CS_SPRING_DIAGONAL;
        animation_index = "FALL";
        y_speed = 1;
    }
}
