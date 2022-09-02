/// character_handle_watersurface()
 // Script to handle the speed after going in or leaving water.

 // Only run if there's.
    if(stg.zone_water_position != -1)
    {
       // Entering the water. 
          if(y > stg.zone_water_position && previous_y < stg.zone_water_position)
          {
             x_speed *= 0.5;
             y_speed *= 0.25;
          }
          else // Leaving the water.
          {
             if(y < stg.zone_water_position && previous_y > stg.zone_water_position)
             {
                if(y_speed > -5){
                   y_speed *= 2;
                }
             }
          }
    }
