 /// bv_character_state_hammer()
//  Script to perform a Hammer attacks. (Amy only)

    if(state == CS_GOAL_CAPSULE) {exit};
    
    // Trigger one of 4 attacks:
       if(amy_hammer_attack == 0)
       {
       
          // Hammer Punch:
            if(ground == true && state == CS_DEFAULT && input_special_pressed)
            {      
                if(not(angle > 45 && angle < 310))
                {  
                    if(state != CS_DEFAULT){
                        state = CS_DEFAULT;
                    }    
                    //cant_move = true;
                    amy_hammer_attack = 1;
                }
            }
                                  
          // Hammer Spin:
             if(ground == false && state = CS_JUMP && input_down && input_special && !input_left && !input_right)
             {
                animation_frame = 0;
                animation_index = "HAMMER SPIN";
                amy_hammer_attack = 2;     
             }
            
          // Hammer Air Attack:
             if(ground == false && state == CS_JUMP && input_special_pressed && amy_hammer_attack != 2)
             {
                animation_index = "HAMMER AIR"; 
                amy_hammer_attack = 3;
                bv_audio_play(_char_hammer_air, global.sfx_volume);                            
             }
              
          // Hammer Flip:
             if(ground == true && state == CS_CROUCH && input_special_pressed)
             {
                state             = CS_DEFAULT; 
                ground            = false;  
                animation_index   = "HAMMER FLIP";    
                amy_hammer_attack = 4;   
                y_speed           = -6;                                                    
             }              
       }
       
    // Stop Attacks/Perform secondary attack:
       if(amy_hammer_attack != 0)
       {
         // Hammer Attack 1:
            if(amy_hammer_attack == 1)
            {
               x_speed = 0;    
               if(!bv_audio_is_playing(_char_hammer))
               {
                   bv_audio_play(_char_hammer, global.sfx_volume);  
               }
               if(input_special_pressed && input_special_count = 2)
               {
                    amy_hammer_attack = 5;
               }
               if((animation_index = "HAMMER PUNCH" && floor(animation_frame) >= 20) || (angle > 45 && angle < 310))
               {
                    amy_hammer_attack = 0;                            
               }
            }
            
         // Stop Spinning:
            if(amy_hammer_attack == 2)
            {
                if(ground)
                {
                    state = CS_DEFAULT;         
                    amy_hammer_attack = 0; 
                }
            }
            
         // Stop Air Attack:
            if(ground == true && amy_hammer_attack == 3)
            {      
                state = CS_DEFAULT;
                amy_hammer_attack  = 0; 
            }
            
         // Stop Flip:
            if(ground == true && amy_hammer_attack == 4)
            {       
                amy_hammer_attack  = 0; 
            }
         
         // Hammer Attack 2
            if(amy_hammer_attack == 5)
            {
               animation_angle = 0;
               if(floor(animation_frame) < 6)
               {
                    x += 1*animation_direction;   
               }   
               if(!bv_audio_is_playing(_char_hammer))
               {
                   bv_audio_play(_char_hammer, global.sfx_volume);  
               }
               if((animation_index = "HAMMER PUNCH 2" && floor(animation_frame) >= 24) || (angle > 45 && angle < 310))
               {
                    amy_hammer_attack = 0;                           
               }    
            }
       }   

