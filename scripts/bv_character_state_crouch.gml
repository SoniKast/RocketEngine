/// bv_character_state_crouch()
 // The characters crouching state.

 // Crouch down when the character is quiet on the ground:
    if(character_id != CHAR_AMY)
    {
        if((ground && x_speed == 0 && y_speed == 0 && (state == CS_DEFAULT || state == CS_BALANCE || state == CS_GLIDE_DROP) && allow_look == 1 && input_down && (animation_index != "CROUCH_UP" && animation_index != "LOOK" && animation_index != "LOOK_END"))){
            state      = CS_CROUCH;
            down_timer = 0;
            x_speed    = 0;
        }   
    }
    else
    {
        if((ground && amy_hammer_attack = 0 && y_speed == 0 && (state == CS_DEFAULT || state == CS_BALANCE) && allow_look == 1 && input_down && (animation_index != "CROUCH_UP" && animation_index != "LOOK" && animation_index != "LOOK_END"))){
            state      = CS_CROUCH;
            down_timer = 0;
            x_speed    = 0;
        }   
    }   
    
 // Check if crouching:
    if(state == CS_CROUCH)
    {
       // Change timer.
          down_timer += 1;
       
       // Reset state:
          if(x_speed != 0)
          {
             x_speed    = 0;
             state      = CS_DEFAULT;
             down_timer = 0;
          }      
          if(y_speed != 0)
          {
             state      = CS_DEFAULT;
             down_timer = 0;
          }
       
       // Stop crouching:
          if(ground && !input_down)
          {
             if(character_id != CHAR_AMY)
             {
                 if(animation_frame >= 3)
                 {
                     state      = CS_DEFAULT;
                     down_timer = 0;
                     animation_index        = "CROUCH UP"
                     animation_frame        = 0;
                 }
             }
             else
             {
                 if(animation_frame >= 2)
                 {
                     state      = CS_DEFAULT;
                     down_timer = 0;
                     animation_index        = "CROUCH UP"
                     animation_frame        = 0;
                 }
             }
          }
    }
