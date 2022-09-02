/// bv_character_state_stroke_look()
// The characters looking state.

 // Look up when the character is quiet on the ground:
    if(y_speed == 0 && (state == CS_STROKE) && input_up){
        state    = CS_STROKE_LOOK;
        up_timer = 0;
        x_speed  = 0;
    }      
     
 // Check if looking up:
    if(state == CS_STROKE_LOOK)
    {
       // Change timer.
          up_timer += 1;
 
       // Stop horizontal speed.
          x_speed = 0;
                    
       // Stop looking up:
          if(ground == false && !input_up)
          {
            state           = CS_STROKE;
            up_timer        = 0;
          }
    }

