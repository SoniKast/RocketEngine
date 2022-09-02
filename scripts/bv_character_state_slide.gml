/// bv_character_state_slide()
 // Script to handle Knuckles slide.
 
 // Only run while sliding.
    if(state == CS_SLIDE)
    {

       // Slide sound.
          if(abs(x_speed) > 0.5)
          {       
             if(bv_audio_is_playing(_char_slide) == false)
             {
                bv_audio_play(_char_slide, global.sfx_volume); 
             }   
          }
                     
       // Dust.
          if(abs(x_speed) > 0.5)
          {
             if(skid_dust_timer > 0)
             {
                skid_dust_timer -= 1;
             }   
             else
             {
                skid_dust_timer = 6;
                instance_create(x, y+12, obj_skid_dust);
             }    
          }         
          
       // Decelerate. 
          if(x_speed > 0)
          {
             x_speed = max(x_speed-0.125, 0);
          }
          else if(x_speed < 0)
          { 
                  x_speed = min(x_speed+0.125, 0);
          }
 
       // Animation.
          if(floor(animation_frame) < 1)
          {
             animation_frame += 0.15;
          }
          
       // Get up.
          if(x_speed == 0)
          {
             animation_frame += 0.25;
             if(floor(animation_frame) > 1)
             {
                state = CS_DEFAULT;
             }
          }
          
       // Cancel, if no longer grounded.
          if(ground == false)
          {
             state = CS_ROLL;
          }
    }
 
 // Stop slide sound.
    if(bv_audio_is_playing(_char_slide) == true && state != CS_SLIDE)
    {
       bv_audio_stop(_char_slide);
    }   
