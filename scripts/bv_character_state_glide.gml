/// bv_character_state_glide()
 // Script to handle Knuckles glide.
 
 // Stop gliding.
    if(input_action_released && state == CS_GLIDE)
    {
       // Multiply horizontal speed by 0.25%
          x_speed = x_speed * 0.25;
          
       // Switch the state.
          state = CS_GLIDE_DROP;
       
       // Set angle to 0.
          angle = 0;
          
       // Reset glide values.
          glide_turn_a = 0;
          glide_turn_s = 0;       
    }
    
 // Finish a drop.
    if(state == CS_GLIDE_DROP && ground)
    {
       // Check angles in order to slide, otherwise, just switch the state to the default one.
          if((angle >= 0 && angle < 25) || (angle <= 360 && angle > 345))
          {
             // Set the x speed to 0.
                x_speed = 0;
                
             // Switch the animation_index to crouch.
                if(animation_index != "LAND")
                {
                   if(bv_audio_is_playing(_char_land))
                   {
                      bv_audio_stop(_char_land);
                   }  
                   bv_audio_play(_char_land, global.sfx_volume)
                }
                animation_index = "LAND";
                
             // Decrease the glide crouch timer.
                if(glide_crouch_timer > 0)
                {
                   glide_crouch_timer -= 1;
                }
                else
                {
                   state              = CS_DEFAULT;            
                   glide_crouch_timer = 15;
                }
          }
          else
          {
             if(abs(x_speed) > 1)
             {
                state              = CS_ROLL;
                glide_crouch_timer = 15;       
                if(bv_audio_is_playing(_char_roll))
                {
                   bv_audio_stop(_char_roll);
                }  
                bv_audio_play(_char_roll, global.sfx_volume);         
             }  
             else
             {
                state              = CS_DEFAULT;
                glide_crouch_timer = 15;              
             }              
          }
    }
    if(state != CS_GLIDE_DROP)
    {
       glide_crouch_timer = 15;
    }
    
 // Trigger glide.
    if(ground == false && (animation_index == "ROLL") && input_action_pressed && shield_usable == true)
    {
       // Reset angle and switch states.
          angle = 0;
          state = CS_GLIDE;
          
       // Set the init. horizontal speed to 4.
          x_speed = animation_direction * 4;
          
       // Stop vertical force if it's below 0.
          if(y_speed < 0)
          {
             y_speed = 0;
          }
    }
    
 // Gravity while gliding.
    if(state = CS_GLIDE)
    {
       if(y_speed < 0.5) { y_speed += glide_gravity }  
       if(y_speed > 0.5) { y_speed -= glide_gravity }   
    }  
    
 // Glide turning, big chunk of code. (Credits to TBat)
    if(state == CS_GLIDE && !ground)
    {
       if(glide_turn_s <= 0.0)
       {
          x_speed += 0.015625*animation_direction;
       }
       if(animation_direction == 1 && input_left && glide_turn_s == 0)
       {
          glide_turn_s = abs(x_speed);
          if(animation_direction == 1)
          {
             glide_turn_a = 0;
          }
          else
          {
             glide_turn_a = 180;
          }
       }
       else if(input_right && glide_turn_s != 0 && glide_turn_a < 180)
       {
               glide_turn_a = 360-glide_turn_a;
       }
       else if(animation_direction == -1 && input_right && glide_turn_s == 0)
       {
               glide_turn_s = abs(x_speed);
               if(animation_direction == 1)
               {
                  glide_turn_a = 0;
               }
               else
               {
                  glide_turn_a = 180;
               }
       }
       else if(input_left && glide_turn_s != 0 && glide_turn_a > 180)
       {
               glide_turn_a = 360-glide_turn_a;
       }
       if(glide_turn_s != 0)
       {
          glide_turn_a = floor(wrap_angle(glide_turn_a+3.8125));
          x_speed      = glide_turn_s*dcos(glide_turn_a);
          
          if(abs(x_speed) >= 3)
          {
             animation_index = "GLIDE";
             animation_frame = 0;
          }
          else
          if(floor(x_speed) == 2 || floor(x_speed) == -2)
          {
                  animation_index = "GLIDE TURN";
                  animation_frame = 1;          
          }
          else
          if(floor(x_speed) == 1 || floor(x_speed) == -1)
          {
                  animation_index = "GLIDE TURN";
                  animation_frame = 2;          
          }
                                              
       // Change facing direction.
          if(floor(x_speed) > 0)
          {
             animation_direction = 1;
          }  
          else if(floor(x_speed) < 0)
          {
                  animation_direction = -1;
          }   
          if(glide_turn_a == 0 || glide_turn_a == 180)
          {
             glide_turn_s = 0;
          }                                                  
       }       
    }
    
 // Grab onto a wall.
    if(state == CS_GLIDE)
    {
       if(((bv_character_calculate_angle(x, y, angle) == 0) && x_speed >= 0 && bv_character_collision_check(COL_RIGHT, MASK_BIG, x, y, 0, -1) && bv_character_collision_check(COL_RIGHT, spr_mask_ledge_climb, x, y, 0, -1)) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_monitor) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1) && !bv_character_collision_check(COL_BOTTOM, MASK_MAIN, x, y, 0, -1) && !bv_character_collision_check(COL_LEFT_EDGE, x, y, angle) && !bv_character_collision_check(COL_RIGHT_EDGE, x, y, angle)) 
       ||(((bv_character_calculate_angle(x, y, angle) == 0) && x_speed <= 0 && bv_character_collision_check(COL_LEFT, MASK_BIG, x, y, 0, -1)  && bv_character_collision_check(COL_LEFT, spr_mask_ledge_climb, x, y, 0, -1))  && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_monitor) && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1) && !bv_character_collision_check(COL_BOTTOM, MASK_MAIN, x, y, 0, -1) && !bv_character_collision_check(COL_LEFT_EDGE, x, y, angle) && !bv_character_collision_check(COL_RIGHT_EDGE, x, y, angle)) 
       {

          // Set Climb X position. 
             climb_ox = x;
             
          // Change state.
             state = CS_CLIMB;
             
          // Reset keys.
             input_action          = false;
             input_action_pressed  = false;
             input_action_released = false;
          
          // Reset values.
             x_speed = 0;
             y_speed = 0;
             glide_turn_s = 0;
             glide_turn_a = 0;
             angle        = 0;
             
          // Play sound.
             if(bv_audio_is_playing(_char_grab))
             {
                bv_audio_stop(_char_grab);
             }  
             bv_audio_play(_char_grab, global.sfx_volume)
       }
       else
       if(((bv_character_calculate_angle(x, y, angle) <> 0) && x_speed >= 0 && bv_character_collision_check(COL_RIGHT, MASK_BIG, x, y, 0, -1) && bv_character_collision_check(COL_RIGHT, spr_mask_ledge_climb, x, y, 0, -1)) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_monitor) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1)) 
       ||(((bv_character_calculate_angle(x, y, angle) <> 0) && x_speed <= 0 && bv_character_collision_check(COL_LEFT, MASK_BIG, x, y, 0, -1)  && bv_character_collision_check(COL_LEFT, spr_mask_ledge_climb, x, y, 0, -1))  && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_monitor) && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spring) && !bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, par_spike) && !bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, 0, -1)) 
       {
           state      = CS_DEFAULT;
           if(animation_index = "GLIDE" || animation_index = "GLIDE TURN")
           {
              animation_index = "WALK";
           }
           glide_turn_s = 0;
           glide_turn_a = 0;            
       }
    }

 // Slide.
    if(state == CS_GLIDE && ground == true)
    {
       // Switch state.
          if(angle >= 0 && angle <= 45 || angle >= 315 && angle <= 360)
          {
             // Set state.
                state = CS_SLIDE;
          
             // Reset keys.
                input_action          = false;
                input_action_pressed  = false;
                input_action_released = false;
          }
          else
          {
             state = CS_DEFAULT;
             if(animation_index = "GLIDE" || animation_index = "GLIDE TURN")
             {
                animation_index = "WALK";
             }             
          }
    }
    
 // Exit if the angle changes.
    if(state == CS_GLIDE && !ground && angle != 0)
    {
       state = CS_DEFAULT;
       if(animation_index = "GLIDE" || animation_index = "GLIDE TURN")
       {
          animation_index = "WALK";
       }
    }
    
 // Reset values.
    if(state != CS_GLIDE)
    {
       glide_turn_s = 0;
       glide_turn_a = 0;
    }
