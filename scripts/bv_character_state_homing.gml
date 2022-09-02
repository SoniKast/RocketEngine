/// bv_character_state_homing()
 // Sonics homing attack ability.
 
 // Create target.
    if(state != CS_HOMING)
    {     
       // Reset homing target flag.
          if(homing_target != noone)
          {
             if(instance_exists(homing_target) == false)
             {
                homing_target = noone;
             }
          }
          if(ground || state != CS_JUMP && state != CS_ROLL || (instance_exists(homing_target) && distance_to_object(homing_target) > homing_distance))
          {
             if(instance_exists(homing_target) == true)
             {
                if(homing_target != noone)
                {
                   with(homing_target)
                   {  
                        instance_destroy();
                   }
                   homing_target = noone;
                }
             }
             else 
             {
                if(homing_target != noone)
                {
                   homing_target = noone;
                }
             }
          }
          
       // Find nearest target.
          if(animation_direction == 1)
          {
             homing_target_id[0]  = instance_nearest_dir_x(x, y, par_monitor, ">=");
             homing_target_id[1]  = instance_nearest_dir_x(x, y, par_badnik, ">=");
             homing_target_id[2]  = instance_nearest_dir_x(x, y, par_spring, ">=");             
          }
          else
          if(animation_direction == -1)
          {
             homing_target_id[0] = instance_nearest_dir_x(x, y, par_monitor, "<=");
             homing_target_id[1] = instance_nearest_dir_x(x, y, par_badnik, "<=");
             homing_target_id[2] = instance_nearest_dir_x(x, y, par_spring, "<=");             
          }          
          
       // Target a Monitor:
          if(homing_target_id[0] != noone && homing_target_id[1] == noone)
          {
             if(shield_usable && !ground && (state == CS_JUMP || state == CS_ROLL))
             {
                if(distance_to_object(homing_target_id[0]) < homing_distance)
                {
                   if(homing_target == noone)
                   {
                      homing_target = instance_create(homing_target_id[0].x, homing_target_id[0].y, obj_homing_target);
                      homing_target.target = other.homing_target_id[0];                                       
                   }
                }
             }
          }
          else // Target a enemy.
          if(homing_target_id[1] != noone)
          {
             if(shield_usable && !ground && (state == CS_JUMP || state == CS_ROLL))
             {
                if(distance_to_object(homing_target_id[1]) < homing_distance)
                {
                   if(homing_target == noone)
                   {
                      homing_target = instance_create(homing_target_id[1].x, homing_target_id[1].y, obj_homing_target);
                      homing_target.target = other.homing_target_id[1];                                       
                   }
                }
             }
          }
          else // Target a spring.
          if(homing_target_id[2] != noone && homing_target_id[1] == noone && homing_target_id[0] == noone)
          {
             if(shield_usable && !ground && (state == CS_JUMP || state == CS_ROLL) && y < homing_target_id[2].y-16)
             {
                if(homing_target_id[2].spring_direction = SPRING_UP)
                {
                   if(distance_to_object(homing_target_id[2]) < homing_distance)
                   {
                      if(homing_target == noone)
                      {
                         homing_target = instance_create(homing_target_id[2].x, homing_target_id[2].y, obj_homing_target);
                         homing_target.target = other.homing_target_id[2];                                       
                      }
                   }
                }
             }
          }      
              
       // Trigger homing attack.
          if(homing_target != noone && instance_exists(homing_target))
          {
             if(input_action_pressed && shield_usable == true && homing_target.visible == true)
             {
                var _dir;
                state         = CS_HOMING;
                _dir          = point_direction(x, y, homing_target.x, homing_target.y)
                shield_usable = false;
             }
          }
          
       // Trigger homing dash.
          if(homing_target == noone)
          {
             if(input_action_pressed && shield_usable == true)
             {
                shield_usable = false;
                state         = CS_JUMP;
                if(homing_mode == 1)
                {
                   x_speed = (animation_direction)*(abs(x_speed)+4);
                   if(x_speed > 12)
                   { 
                      x_speed = 12;
                   }
                   if(x_speed < -12) 
                   { 
                      x_speed = -12;
                   }
                }
                else
                {
                   x_speed = animation_direction*8;
                }
                y_speed       = 0;
             }
          }
    }
    else if(state == CS_HOMING)
    {
            if(homing_target != noone && instance_exists(homing_target))
            {
               var _dir;
               state   = CS_HOMING;
               _dir    = point_direction(x, y, homing_target.x, homing_target.y)
               x_speed = lengthdir_x(homing_speed, _dir);
               y_speed = lengthdir_y(homing_speed, _dir);
               if(afterimage_draw == false)
               {
                   afterimage_draw = true;
               }
            }
            else
            {
                 state = CS_JUMP;
            }
    }
