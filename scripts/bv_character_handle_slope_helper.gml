/// bv_character_handle_slope_helper()
 // Handle the slope helper, which launches the character in case the normal launching method is not working properly with the tile.
 
    launch_sensor = instance_nearest(x, y, obj_slope_helper);
    
    if(launch_sensor != noone)
    {
       if(bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_LARGE, x, y, angle, launch_sensor) && ground && (state != CS_JUMP))
       {
          if(launch_sensor.launch_direction == 1)
          {
             if(x_speed >= 1 && slope_ang_mode = launch_sensor.ang_mode)
             {
                // Disable stopping at Walls to properly launch.  
                   disable_wallstop = true;
                   if(alarm[0] == -1)
                   {
                      alarm[0] = 15;
                   }      
                               
                   // Force new angles:
                      angle_relative = sign(x_speed)*launch_sensor.launch_angle;
                      angle          = sign(x_speed)*launch_sensor.launch_angle;
                
                   // Set horizontal and vertical speeds:
                      y_speed = -dsin(angle_relative)*x_speed;
                      x_speed =  dcos(angle_relative)*x_speed;
                             
                   // Disable ground flag:
                      ground = false;
                                                                              
                   // Reforce new angles just to make sure nothing changes trying to launch:
                      angle_relative = sign(x_speed)*launch_sensor.launch_angle;
                      angle          = sign(x_speed)*launch_sensor.launch_angle;
                      
                   // Set the animation angle.
                      animation_angle     = launch_sensor.launch_angle;    
                      animation_angle_mod = launch_sensor.launch_angle;
             }
          }   
          
          if(launch_sensor.launch_direction == -1)
          {
             if(x_speed <= -1 && slope_ang_mode = launch_sensor.ang_mode)
             {
                // Disable stopping at Walls to properly launch.  
                   disable_wallstop = true;
                   if(alarm[0] == -1)
                   {
                      alarm[0] = 15;
                   }      
                               
                   // Force new angles:
                      angle_relative = sign(x_speed)*launch_sensor.launch_angle;
                      angle          = sign(x_speed)*launch_sensor.launch_angle;
                
                   // Set horizontal and vertical speeds:
                      y_speed = -dsin(angle_relative)*x_speed;
                      x_speed =  dcos(angle_relative)*x_speed;
                             
                   // Disable ground flag:
                      ground = false;
                                                                              
                   // Reforce new angles just to make sure nothing changes trying to launch:
                      angle_relative = sign(x_speed)*launch_sensor.launch_angle;
                      angle          = sign(x_speed)*launch_sensor.launch_angle;
                      
                   // Set the animation angle.
                      animation_angle     = -launch_sensor.launch_angle;    
                      animation_angle_mod = -launch_sensor.launch_angle;
    
             }
          }                        
       }
    }
