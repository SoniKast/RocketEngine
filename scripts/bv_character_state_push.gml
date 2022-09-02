/// bv_character_state_push();
 // The character pushing state.
 
     var push_col_r, push_col_l;
         push_col_r = bv_character_collision_check(COL_RIGHT, MASK_BIG, x, y, angle);
         push_col_l = bv_character_collision_check(COL_LEFT,  MASK_BIG, x, y, angle);   
         
 // Trigger push:
    if(ground == true && y_speed == 0)
    {
       if(state != CS_SPINDASH && state != CS_LOOK && state != CS_CROUCH && state != CS_BALANCE && state != CS_SHORT_HOP)
       {
          if(push_timer >= push_timer_max)
          {
             state = CS_PUSH;
          }
          else
          {
             if(push_col_r && input_right) { push_timer += 1 };
             else
             if(push_col_l && input_left)  { push_timer += 1 };
          }
       }
    }   
    
 // Stop pushing.
    if(state == CS_PUSH)
    {
       if(((push_col_l && !input_left && !push_col_r) || (push_col_r && !input_right && !push_col_l) || (!push_col_r && !push_col_l)))
       {
          state      = CS_DEFAULT;
          push_timer = 0;
      }       
    }   

