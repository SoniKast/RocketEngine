/// bv_character_state_look()
// The characters looking state.

 // Look up when the character is quiet on the ground:
    if((ground && amy_hammer_attack = 0 && x_speed == 0 && y_speed == 0 && (state == CS_DEFAULT) && allow_look == 1 && input_up && (animation_index != "LOOK END" && animation_index != "CROUCH" && animation_index != "CROUCH UP"))){
        state    = CS_LOOK;
        up_timer = 0;
        x_speed  = 0;
    }      
     
 // Check if looking up:
    if(state == CS_LOOK)
    {
       // Change timer.
          up_timer += 1;
 
       // Stop horizontal speed.
          x_speed = 0;
          
       // Reset state:
          if(x_speed != 0)
          {
             x_speed  = 0;
             state    = CS_DEFAULT;
             up_timer = 0;
          }      
          if(y_speed != 0)
          {
             state    = CS_DEFAULT;
             up_timer = 0;
          }
                    
       // Stop looking up:
          if(ground && !input_up)
          {
             if(animation_frame >= 2)
             {
                state           = CS_DEFAULT;
                up_timer        = 0;
                animation_index = "LOOK END"
             }
          }
    }

