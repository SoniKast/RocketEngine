/// scr_character_action_transform()
//  Script to handle the Transforming state.
 
    // Check if we can Transform:
       if(state != CS_TRANSFORM && state = CS_JUMP && player_state == PLAYER_NORMAL && shield_index = 0 && shield_object = noone && invincibility == 0 && allow_transformation == 1 && state != CS_FLY && state != CS_FLYDROP){
          if(global.cemeralds == 7 && global.crings >= 50 && input_action_pressed){
             state = CS_TRANSFORM;
             invincibility          =  2;
             invincibility_timer    = -3;
             if(bv_audio_is_playing(_char_transform) == 1)
             {
                bv_audio_stop(_char_transform); 
             }   
             bv_audio_play(_char_transform, global.sfx_volume);    
          }
       }
       
    // Transform into the Super Form:
       if(state = CS_TRANSFORM){
          x_speed = 0;
          y_speed = 0;         
          if(bv_audio_is_playing(_ev_super) == 1)
          {
                bv_audio_stop(_ev_super); 
          }   
          bv_audio_loop(_ev_super, global.ev_volume);
          if(animation_frame >= 15)
          {
             if(transform_timer != 0){
                transform_timer --;
             }
             else
             {
                if(global.cemeralds == 7)
                {
                    player_state = PLAYER_SUPER;
                }
                state = CS_JUMP;
             }
          }
       }      
       
    // Decrease the Ring Counter and Transform back into our normal state.
       if(player_state == PLAYER_SUPER)
       {
          if(global.crings != 0)
          {
             if(alarm[1] == -1)
             {
                alarm[1] = 60;
             }
          }
          else
          {
            // Make sure to not run the alarm event:
               alarm[1] = -1;                  
            // Palette fade:
               if(character_id = CHAR_SONIC)
               {
                  transform_ended  = 1;
                  if(character_id != CHAR_SONIC){
                     palette_position = 1;
                  }else{
                     palette_position = 0;
                  }
               }
            // Reset the Characters state:
               player_state = PLAYER_NORMAL;                
            // Change the animation to "BLANK" to make sure that the current animation is being reloaded.
               animation_index      = "BLANK";
            // Reset the Transform Timer:
               transform_timer = 15;
            // Again, change the animation to "BLANK" to make sure that the current animation is being reloaded properly.
               animation_index      = "BLANK AGAIN";
          }
       }

