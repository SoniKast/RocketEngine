/// bv_character_state_climb()
 // Script to handle Knuckles climb.
    
 // Only run if we're climbing.
    if(state == CS_CLIMB)
    {
       // Keep our horizontal speed at 0.
          x_speed = 0;

       // If the x position doesn't match the position given in the variable climb_x, stop climbing. We do the same if there's no ground below us.
          if(x != climb_ox || ground == true || angle != 0)
          {
             if(ground)
             {
                state = CS_DEFAULT;
             }
             else
             {
                state           = CS_GLIDE_DROP;
                animation_frame = 1;
             }
             climb_ox = 0;
          }
          
       // If we're not grabbing onto anything, fall. 
          if(!bv_character_collision_check(COL_RIGHT, MASK_BIG, x, y, angle, -1))
          &&(!bv_character_collision_check(COL_LEFT, MASK_BIG, x, y, angle, -1))
          {
             if(!ground)
             {
                state           = CS_GLIDE_DROP;
                animation_frame = 0;
             }
          }
       
       // If we're grabbing onto a ledge, climb up.
          if((animation_direction == 1 && y_speed <= 0) && !bv_character_collision_check(COL_RIGHT, spr_mask_ledge_climb, x, y, angle, -1) && is_ledge_grabbing == 0)
          {
             y_speed           = 0;
             is_ledge_grabbing = 1;
             animation_frame   = 0;
             input_up          = false;
          } 
          if((animation_direction == -1 && y_speed <= 0) && !bv_character_collision_check(COL_LEFT, spr_mask_ledge_climb, x, y, angle, -1) && is_ledge_grabbing == 0)
          {
             y_speed           = 0;
             is_ledge_grabbing = 1;
             animation_frame   = 0;
             input_up          = false;
          }         
          if(is_ledge_grabbing == 1)
          {
             // Disable the camera moving using character position and instead, shift it towards a new positon (character facing direction * 22x, -24y) 
                with(ctr_camera)
                { 
                     cam_p_dis = 1;
                     if(cam_x != cam_handle.x+(24*other.animation_direction))
                     {
                        cam_x += (cam_handle.x+(24*other.animation_direction)-cam_x)*0.25;
                     }
                     if(cam_y != cam_handle.y-22)
                     {
                        cam_y += (cam_handle.y-22-cam_y)*0.25;
                     }                      
                }
             
             // Move the character to the new position.
                if(floor(animation_frame) > 3)
                {
                   if(animation_direction == 1)
                   {                               
                      state                 = CS_DEFAULT;             
                      input_up              = false;
                      animation_index       = "IDLE";                    
                      animation_frame       = 0;                      
                      is_ledge_grabbing     = 0;                        
                      y                    -= 22;
                      x                    += 24;                                               
                      ctr_camera.cam_p_dis  = 0;
                   }
                   else
                   if(animation_direction == -1)
                   {              
                      state                 = CS_DEFAULT;   
                      animation_index       = "IDLE";                      
                      animation_frame       = 0;                                  
                      input_up              = false;
                      is_ledge_grabbing     = 0;                   
                      y                    -= 22;
                      x                    -= 24;                    
                      ctr_camera.cam_p_dis  = 0;
                   }                
                }
          }  
       
       // When pressing up or down, climb and animate.
          if(is_ledge_grabbing == 0)
          {
             if(input_up && !bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, angle, -1))
             {
                y_speed = -climb_speed;               
             }
             else if(input_up && bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, angle, -1))
             {
                     if(y_speed < 0)
                     { 
                        y_speed = 0;
                     }
             }             
             if(input_down && !bv_character_collision_check(COL_BOTTOM, MASK_BIG, x, y, angle, -1))
             {
                y_speed = climb_speed;             
             }    
             else if(input_down && bv_character_collision_check(COL_BOTTOM, MASK_BIG, x, y, angle, -1))  
             {
                     state           = CS_DEFAULT;
                     animation_index = "STAND";
             }  
             
             // Stop movement.
                if(!input_up && !input_down)
                {
                   y_speed = 0;
                }
          }
          
       // Jump off wall.
          if(input_action_pressed)
          {
             if(state == CS_CLIMB && is_ledge_grabbing == 0)
             {
                state = CS_JUMP;
                if(physic_state == 0)
                {
                   x_speed = animation_direction*-4;
                   y_speed = -4;
                }
                else
                {
                   x_speed = animation_direction*-2;
                   y_speed = -2;
                }
                animation_direction = -animation_direction;
                if(bv_audio_is_playing(_char_jump) == 1)
                {
                   bv_audio_stop(_char_jump); 
                }   
                bv_audio_play(_char_jump, global.sfx_volume);    
             }
          }        
    }
    
 // Reset camera state and flag.
    if(state != CS_CLIMB)
    {
       if(is_ledge_grabbing == 1)
       {
         is_ledge_grabbing = 0;
         with(ctr_camera)
         {
              cam_p_dis = 0;
         }
       }
    }
