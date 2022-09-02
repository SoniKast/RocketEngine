/// bv_character_state_balance()
 // Trigger the balance animation on tile edges.
 
    if(ground && x_speed == 0 && y_speed == 0 && angle == 0)
    {
       if(state = CS_DEFAULT || state = CS_BALANCE)
       {
          if(bv_character_collision_check(COL_LEFT_EDGE, x, y, 8) && !bv_character_collision_check(COL_RIGHT_EDGE, x, y, 350))
          {
             state = CS_BALANCE;
             if(animation_direction == 1)
             {
                bv_apply_animation("BALANCE 2");
             }
             else
             {
                bv_apply_animation("BALANCE");
             }
          }   
          else
          if(!bv_character_collision_check(COL_LEFT_EDGE, x, y, 8) && bv_character_collision_check(COL_RIGHT_EDGE, x, y, 350))
          {
             state = CS_BALANCE;
             if(animation_direction == 1)
             {
                bv_apply_animation("BALANCE 2");
             }
             else
             {
                bv_apply_animation("BALANCE");
             }
          }  
       }
    }
    
 // Stop balancing.
    if(x_speed <> 0 || y_speed <> 0)
    {
       if(state == CS_BALANCE)
       {
          state = CS_DEFAULT;
       }
    }
    

