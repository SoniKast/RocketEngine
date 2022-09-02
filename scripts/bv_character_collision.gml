/// bv_character_collision(x, y, object)
 // Script that checks if we collide with an object.
 
 // Solid:
    if(place_meeting(argument0, argument1, par_solid))
    {
       _solidInstance = instance_place(argument0, argument1, par_solid)
       if(_solidInstance != noone)
       {
          if(_solidInstance.flag_collision == 1)
          {
             if(collision_point(x, argument1, _solidInstance, true, true))
             {
                f_launch_angle     = _solidInstance.flag_launch_angle; 
                f_launch_allow     = _solidInstance.flag_launch_allow;
                f_launch_direction = _solidInstance.flag_launch_direction;
                f_ceiling_movement = _solidInstance.flag_ceiling_movement;
                f_edge_exception   = _solidInstance.flag_edge_exception;
             }
             f_angle_change = _solidInstance.flag_angle_change;
             f_edge_skip    = _solidInstance.flag_edge_skip; 
             f_ceiling_movement = _solidInstance.flag_ceiling_movement;             
             return true;
          }
       }
    }
 
 // Platform:
    if(ground == true || platform_mode == 1)
    {       
       if(place_meeting(argument0, argument1, par_platform))
       {
          _platformInstance = instance_place(argument0, argument1, par_platform);
          if(_platformInstance != noone)
          {
             if(_platformInstance.flag_collision == 1)
             {
                if(platform_check == false)
                {
                   if(angle == 0)
                   {
                      if(collision_point(x, argument1, _platformInstance, true, true))
                      {
                          f_launch_angle     = _platformInstance.flag_launch_angle; 
                          f_launch_allow     = _platformInstance.flag_launch_allow;                          
                          f_launch_direction = _platformInstance.flag_launch_direction;  
                          f_ceiling_movement = _platformInstance.flag_ceiling_movement;   
                          f_edge_exception   = _platformInstance.flag_edge_exception;                                               
                      }
                      f_angle_change = _platformInstance.flag_angle_change;
                      f_edge_skip    = _platformInstance.flag_edge_skip;                            
                      platform_check = true;
                      return true;
                   }
                }
                else
                {
                   if(collision_point(x, argument1, _platformInstance, true, true))
                   {
                      f_launch_angle     = _platformInstance.flag_launch_angle; 
                      f_launch_allow     = _platformInstance.flag_launch_allow;                      
                      f_launch_direction = _platformInstance.flag_launch_direction;  
                      f_ceiling_movement = _platformInstance.flag_ceiling_movement;
                      f_edge_exception   = _platformInstance.flag_edge_exception;                         
                   }
                   f_angle_change = _platformInstance.flag_angle_change;
                   f_edge_skip    = _platformInstance.flag_edge_skip;                      
                   return true;
                }
             }
         }
       }
    }
    
 // Force animation angle to 0 if we're colliding with bridges.
    if(instance_place(argument0, argument1, par_bridge) || instance_place(argument0, argument1, obj_bridge_node))
    {
       if(ground == true)
       {
          if(angle != 90 && angle != 270)
          {
             bv_character_set_angle(0);
          }
       }
    }
     
 // Rail:
    if(place_meeting(argument0, argument1, par_rail) && rail_collision = true)
    {
        return true;
    }
            
 // Layers:
    if(argument2 == 0)
    {    
       return place_meeting(argument0, argument1, par_layer_low);
    }
    if(argument2 == 1)
    {     
       return place_meeting(argument0, argument1, par_layer_high);
    }
