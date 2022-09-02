/// bv_character_handle_springs();
// Handle rings

    var spring;
        spring = instance_nearest(x, y, par_spring);
       
    // Yellow Springs
    if(spring != noone)
    {
        if(spring.spring_direction == SPRING_UP)
        {
            // Collide with the top yellow spring:
            if(bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, spring) && y_speed >= 0)
            {
                // Bounce the player.
                ground  = false;
                y_speed = -spring.spring_strength;
                bv_character_set_angle(0);
               
                // Player state
                state = CS_SPRING;
                spring_force = "weak";
                
                // Spring speed
                spring.image_speed = 0.5;
                bv_audio_play(_general_spring, global.sfx_volume);    
            }
        }
        if(spring.spring_direction == SPRING_DOWN)
        {
            // Collide with the down yellow spring:
            if(bv_character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, spring) && y_speed <= 0)
            {
                // Bounce the player.
                ground  = false;
                y_speed = spring.spring_strength;
                bv_character_set_angle(0);
               
                // Spring speed
                spring.image_speed = 0.5;
                bv_audio_play(_general_spring, global.sfx_volume);    
            }
        }
        if(spring.spring_direction == SPRING_LEFT)
        {
            if(!bv_character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, spring) && bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, spring) && sign(x_speed) >= 0.0)
            {
             // Bounce the character.
                x_speed             = -spring.spring_strength;
                input_lock_s        = 1;
                lock_timer          = 16;                
                animation_direction = -1;
                bv_character_set_angle(0);
                
             // Revert skid state.
                if(state == CS_SKID)
                { 
                   state = CS_DEFAULT;
                }
                
             // Animate.
                spring.image_speed = 0.5;    
                
             // Sound:            
                bv_audio_play(_general_spring, global.sfx_volume);                    
            }
        }
       // RIGHT:
       if(spring.spring_direction == SPRING_RIGHT)
       {
          if(!bv_character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, spring) && bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, spring) && sign(x_speed) <= 0.0)
          { 
             // Bounce the character.
                x_speed             = spring.spring_strength;
                input_lock_s        = 1;
                lock_timer          = 16;                
                animation_direction = 1;
                bv_character_set_angle(0); 
                
             // Revert skid state.
                if(state == CS_SKID)
                { 
                   state = CS_DEFAULT;
                }
                                
             // Animate.
                spring.image_speed = 0.5;  
                
             // Sound:            
                bv_audio_play(_general_spring, global.sfx_volume);    
          }           
       }        
    }
 
 // Diagonal Spring handle:
    var _dspring;
        _dspring = instance_nearest(x, y, par_spring_diagonal);
        
 // Trigger spring.
    if(_dspring != noone)
    {
       // UP RIGHT:
       if(_dspring.spring_direction == SPRING_UP_RIGHT)
       {
          if((bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, _dspring) && y_speed >= 0) or (bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, _dspring) && x_speed <= 0))
          {
             // Bounce the character.
                ground              = false;
                x_speed             =  _dspring.spring_strength;
                y_speed             = -_dspring.spring_strength;
                animation_direction = 1;                
                bv_character_set_angle(0);

                
             // Set State:
                state = CS_SPRING_DIAGONAL;  
                spring_force = "weak";
             
             // Disable shield flag.
                shield_usable = false;
                
             // Animate.
                _dspring.image_speed = 0.5;
                
             // Sound:            
                bv_audio_play(_general_spring, global.sfx_volume);                             
          }           
       }
       
       // UP LEFT:
       if(_dspring.spring_direction == SPRING_UP_LEFT)
       {
          if((bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, _dspring) && y_speed >= 0) or (bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, _dspring) && x_speed <= 0))
          {
             // Bounce the character.
                ground              = false;
                x_speed             = -_dspring.spring_strength;
                y_speed             = -_dspring.spring_strength;
                animation_direction = -1;    
                bv_character_set_angle(0);
                
             // Set State:
                state = CS_SPRING_DIAGONAL;  
                spring_force = "weak";
             
             // Disable shield flag.
                shield_usable = false;
                
             // Animate.
                _dspring.image_speed = 0.5;
                
             // Sound:            
                bv_audio_play(_general_spring, global.sfx_volume);               
          }           
       }
    }
