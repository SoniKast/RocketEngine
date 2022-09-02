/// bv_character_state_grind()
 // Handle Sonic and Amy's grinding state.

    if(state = CS_GRIND)
    {
        if(x_speed > 0) { if(input_left && !input_right)  { animation_direction = 1; if(x_speed > 3) { x_speed -= 1.5 }}}
        if(x_speed > 0) { if(input_right && !input_left) { animation_direction = 1; if(x_speed < 3) { x_speed += 1.5 }}}
    }
