/// bv_character_state_fly()
 // Script to handle Miles flying.
 
 // While flying...
    if(state == CS_FLY)
    {
       // Set/Get fly timer:
          miles_flight_timer = min(miles_flight_timer+1, miles_flight_duration);
          
       // Drop if we flew too long:
          if(miles_flight_timer == miles_flight_duration)
          {
             state = CS_FLYDROP;
             if(y_speed == 0 || y_speed < 0)
             {
                y_speed = 0.03125;
             }
             y_acceleration = 0.03125;
          }    
          
       // Gain height:
          if(state != CS_FLYDROP)
          {
             if(input_action_pressed && y_speed > -1)
             {
                y_acceleration = -0.125;
             }
             else if(y_speed < -1)
             {
                     y_acceleration = 0.03125;
             }
          }
          
       // Prevent getting stuck inside terrain.
          if(bv_character_collision_check(COL_TOP, MASK_MAIN, x, y, angle, -1) == true && y_speed == 0)
          { 
             y_acceleration = 0.03125;
          }
    }
    
 // Trigger fly:
    if(!ground && (animation_index == "ROLL") && input_action_pressed && shield_usable == true)
    {
       state              = CS_FLY;
       angle              = 0;
       animation_angle    = 0;
       miles_tail_angle   = 0;
       miles_flight_timer = 0;
       y_acceleration     = 0.03125;
    }
    
 // Sound handling.
    if(state == CS_FLY)
    {
       if(physic_state == 0)
       {
          if(bv_audio_is_playing(_char_flying) == false)
          {
             bv_audio_loop(_char_flying, global.sfx_volume);
          }            
       }
       else
       {
          if(bv_audio_is_playing(_char_flying) == true)
          {
             bv_audio_stop(_char_flying);
          }               
       }
    }
    else if(state != CS_FLY && bv_audio_is_playing(_char_flying) == true)
    {
            bv_audio_stop(_char_flying);
    }

