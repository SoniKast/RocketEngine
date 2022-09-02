/// bv_character_state_roll()
 // The characters rolling state.
 
 // If you're not Amy...
 if(character_id != CHAR_AMY)
 {
    // Check if we're actually rolling:
    if(ground && state == CS_ROLL)
    {
       // Decelerate depending on input and direction:
          if(input_left  && x_speed > 0)  { x_speed -= roll_deceleration; if(x_speed < 0) { x_speed = 0; } }
          if(input_right && x_speed < 0)  { x_speed += roll_deceleration; if(x_speed > 0) { x_speed = 0; } }
          
       // Friction:
          x_speed -= min(abs(x_speed), roll_friction)*sign(x_speed);
          
       // Uncurl.
          if(abs(x_speed) < 0.5 && tunnel_lock == 0)
          {
             state = CS_DEFAULT;
          }
    }
    else if(!ground && state == CS_ROLL)
    {
            jump_completed            = true;
            shield_usable             = false;
            state                     = CS_JUMP;    
            roll_rebounce             = true;
    }
 
 // Trigger roll by pressing down:
    if(state == CS_DEFAULT && ground && abs(x_speed) >= 1.03125 && (input_down))
    {
       if(global.setting_gameplay_roll_trigger == true || (!input_left && !input_right && global.setting_gameplay_roll_trigger == false))
       {
          // Change state: 
             state = CS_ROLL;      
          
          // Sound Effect:
                if(bv_audio_is_playing(_char_roll))
                {
                   bv_audio_stop(_char_roll);
                }  
                bv_audio_play(_char_roll, global.sfx_volume);    
           
       }
    }
 }
