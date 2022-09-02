/// character_state_skid();
 // The characters skidding/sliide state.
 
    // When the input is locked, disable skidding
    if (input_lock_l || input_lock_r)
    {
        if (state == CS_SKID) state = CS_DEFAULT;
        exit;
    }

    // Next animation set.
       if(!input_right && !input_left)
       {
          if(state == CS_SKID)
          {
             animation_next = "WALK";           
          }
       }    
       else
       {
          if(state == CS_SKID)
          {
             animation_next = "SKID TURN";
          }          
       }
       if(state != CS_SKID && animation_index == "SKID TURN")
       {
          if(animation_flag == "END" || animation_frame > 2)
          { 
             animation_index = "WALK";
          }
       }
       
    // Trigger skidding
    if (ground == true && input_lock_s == 0 && state == CS_DEFAULT && input_alarm <= 0)
    {
        if (angle < 25 || angle > 335) 
        {
            if ((x_speed <= -3.5 && input_right) or (x_speed >= 3.5 && input_left))
            {
                if (state != CS_SKID)
                {
                    state               = CS_SKID;
                    skid_direction      = sign(x_speed);
                    animation_frame     = 0;
                    animation_index     = "SKID";   
                    animation_direction = sign(x_speed);
                    bv_audio_play(_char_skidding, global.sfx_volume);                            
                }
            }
        }
    }
   
    // Skid Dust:
       if(state == CS_SKID)
       {
          if(skid_dust_timer > 0)
          {
             skid_dust_timer -= 1;
          }   
          else
          {
             skid_dust_timer = 3;
             instance_create(x, y+12, obj_skid_dust);
          }         
       }
 
 
    // While skidding, check some stuff
    if (state == CS_SKID)
    {
        // Return to the normal state
        if ((animation_index == "SKID TURN" || animation_index = "WALK" ) && animation_flag == "END") 
        {
            if (!input_left && !input_right) 
            {
                state = CS_DEFAULT;
                input_alarm = 10;
            }
        }
        if (skid_direction == 1)
        {
            if (input_left)
            {
                if (x_speed > 0){ 
                    x_speed -= x_acceleration*9.69420;
                }              
                else
                {
                    x_speed             = -0.5;
                    state               = CS_DEFAULT;
                    animation_index     = "SKID TURN";
                    animation_frame     = 4;             
                   //animation_direction = -1;          
                }
            }
            else if (input_right)
            {
                     state = CS_DEFAULT;
                     input_alarm = 10;
            }
        }
        if (skid_direction == -1)
        {
            if (input_right)
            {
                if (x_speed < 0){
                    x_speed += x_acceleration*9.69420;         
                }  
                else
                {
                    x_speed             = 0.5;
                    state               = CS_DEFAULT;
                    animation_index     = "SKID TURN";  
                    animation_frame     = 4;         
                  //animation_direction = 1;      
                }
            }
            else if (input_left)
            {
                     state = CS_DEFAULT;
                     input_alarm = 10;
            }
        }
        
        if (ground == false){
            state = CS_DEFAULT;            
        }
     }

 // Cancel skid.
    if((x_speed == 0 || animation_index = "WALK" || angle_relative >= 25 && angle_relative <= 315) && state == CS_SKID)
    {
       state = CS_DEFAULT;
    }
