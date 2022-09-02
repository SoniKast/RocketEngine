/// bv_character_handle_monitor();
// Handle monitors

    // Monitor handle:
    var monitor;
        monitor = instance_nearest(x, y, par_monitor);
    
    // Destroy from the top.
    if(monitor != noone)
    {
        if(bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, monitor) && y_speed >= 0)
        {
          if((state = CS_JUMP && character_id != CHAR_AMY || character_id == CHAR_AMY && amy_hammer_attack = 2 or amy_hammer_attack = 3 ) || state = CS_ROLL || animation_index = "ROLL" || state = CS_HOMING)
          {
             // Destroy monitor:
                monitor.parent = id;             
                with(monitor)
                {
                     instance_destroy()
                }
                
             // Rebound:
             if(state != CS_HOMING)
             {
                if(input_action)
                {
                    y_speed        *= -1;
                    ground          = false;
                    jump_completed  = false;
                }
                else
                {
                    y_speed        = max(-4, y_speed*-1)
                    ground         = false;
                    jump_completed = false;
                }
             }
             else
             {
                 shield_usable  = true;
                 ground         = false;             
                 state          = CS_JUMP;
                 x_speed        = 0;
                 y_speed        = -6;
                 jump_completed = false;                
             }
          }
       }
       // Destroy monitors while standing on them with Amy:
       if(character_id == CHAR_AMY)
       {
            if((amy_hammer_attack = 1 && animation_frame >= 5))
            {
                if(bv_character_collision_check(COL_MAIN_OBJECT, x, y, monitor))
                {
                    // Destroy the monitor:
                    monitor.parent = id;
                    with(monitor)
                    {
                        instance_destroy();
                    }
                }
            }
       }
    }
    
 // Destroy from the side.
    if(monitor != noone)
    {
        if(bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, angle, monitor) || bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, angle, monitor))
        {
            if(state == CS_ROLL || state == CS_COMBO || state == CS_SOMMERSAULT || state == CS_HOMING)
            {
                // Destroy monitor:
                monitor.parent = id;                        
                with(monitor)
                {           
                     instance_destroy();
                }
                
                // Rebound (Homing attack)
                if(state == CS_HOMING)
                {
                    shield_usable  = true;
                    ground         = false;             
                    state          = CS_JUMP;
                    x_speed        = 0;
                    y_speed        = -6;
                    jump_completed = false;    
                }
            }
        }
    }
    
 // Check if we collide with the bottom: 
    if(monitor != noone && (y_speed <= 0 && (state == CS_HOMING)) && (bv_character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, angle, monitor)))
    {  
       if(state == CS_HOMING)
       {
          // Destroy monitor:
             shield_usable  = true;
             ground         = false;                   
             state          = CS_JUMP;
             monitor.parent = par_character;
             with(monitor)
             {
                  instance_destroy();
             }  
       }
       angle           = 0;
       if(y_speed      < 0)
       {
          y_speed     *= -1;
       }
    }
