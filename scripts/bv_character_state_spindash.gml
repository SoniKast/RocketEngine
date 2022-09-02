/// bv_character_state_spindash()
 // The characters spindash state.

 if(character_id != CHAR_AMY)
 {
    var char_spindash_sound = _char_spindash_charge1;
    // Trigger rolling if we're spindashing and no longer holding down:
    if(state == CS_SPINDASH)
    {
       // Change to the rolling state and change the horizontal speed:
          if(!input_down && ground)
          {
             if((animation_direction == 1 || animation_direction == -1)) /* && (!bv_character_collision_check(COL_RIGHT, MASK_BIG, x, y, angle) || bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, par_monitor))) || (animation_direction == -1 && (!bv_character_collision_check(COL_LEFT, MASK_BIG, x, y, angle)) || bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, par_monitor)))*/
             {
                state              = CS_ROLL;
                x_speed            = animation_direction*(8+(spindash_strength div 2)); 
                if(global.setting_gameplay_camera_lag == true)    
                {         
                    ctr_camera.cam_lag = 16;              
                }
                bv_audio_play(_char_spindash_release, global.sfx_volume);       
                if(bv_audio_is_playing(char_spindash_sound))
                {
                    bv_audio_stop(char_spindash_sound);
                }                                                                                      
                exit;       
             }else{
                state   = CS_DEFAULT;
                x_speed = 0;
             }
          }  

       // Make sure there's no horizontal force:
          if(x_speed != 0)
          {
             x_speed = 0;
          }

       // Add strength to our spindash:
          if(input_action_pressed)
          {
             spindash_strength += 2;
             if(spindash_strength > 8)
             {
                spindash_strength = 8;
             }
             if(spindash_pitch < 8)
             {
                spindash_pitch +=1
             }
             else
             {
                spindash_pitch = 8;
             }
            
             // Play Sound:
                if(bv_audio_is_playing(char_spindash_sound))
                {
                    bv_audio_stop(char_spindash_sound);
                }  
                bv_audio_play(char_spindash_sound, global.sfx_volume);                   
                bv_audio_set_pitch(char_spindash_sound, 1+(spindash_pitch*0.075));
             
             // Change animation frame.
                spindash_frame  = 0;
                animation_frame = 0;
          }
          
       // Decrease strength.
          if(spindash_strength > 0)
          {
             spindash_strength -= ((spindash_strength / 0.125) / 256);
          }
          if(spindash_strength < 0)
          {
             spindash_strength = 0;
          }
       
       // Reset pitch.
          if(!bv_audio_is_playing(char_spindash_sound))
          {
             spindash_pitch = 0;  
          }
    }
 
 // Trigger Spindash:
    if(state == CS_CROUCH && input_action_pressed)
    {
       // Change state and set values:
          state             = CS_SPINDASH;
          spindash_strength = 0; 
          spindash_pitch    = 0;  
          if(bv_audio_is_playing(char_spindash_sound))
          {
             bv_audio_stop(char_spindash_sound);
          }  
          bv_audio_play(char_spindash_sound, global.sfx_volume);                   
          bv_audio_set_pitch(char_spindash_sound, 1+(spindash_pitch*0.075));                        
    }
 }
