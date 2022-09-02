/// bv_character_state_pull()
// Pulling

    if(state == CS_PULL)
    {
       animation_angle = 0;
       cloud_bounce = false;
       animation_index = "PULL UP";
       y_speed    = 0;
       x_speed    = 0;
       if(pull_timer != 0)
       {
          pull_timer -= 1; 
       }
    }
    if(pull_timer == 0)
    {
       bv_audio_play(_general_pole, global.sfx_volume);
       pull_timer      = -1;
       pull_delay      =  1;
       y_speed         = -pull_speed;
       state           = CS_SPRING;
       spring_force    = "strong";
       alarm[2]        = 5;
    }     
