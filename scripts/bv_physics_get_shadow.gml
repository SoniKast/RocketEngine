/// bv_physics_get_shadow()
 // Get physic values for Shadow.

 // Default physics.
   if(physic_state == 0) 
   {
      // Horizontal:
         if(speedshoe_state == 0)
         {
            x_speed_top = 6;
         }
         else
         {
            x_speed_top = 12;          
         }

         if(speedshoe_state == 0)
         {               
            x_acceleration = 0.026875;
         }
         else
         {
            x_acceleration = 0.09375;
         }
         
         x_deceleration    = 0.5;      
         x_slope_factor    = 0.125;  
         
         if(speedshoe_state == 0)
         {  
            x_air_accel = 0.06375; 
         } 
         else
         {
            x_air_accel = 0.1875;
         }
         
      // Vertical:                           
         if(state = CS_HURT)
         {
            y_acceleration = 0.1875;
         }
         else
         {
            y_acceleration = y_common_acceleration;
         }
         
      // Jump:
         jump_strength     = -4.5753;    
         jump_release      = -2.545768;     

      // Roll:
         roll_deceleration = 0.125;    
         if(speedshoe_state == 0)
         {
            roll_friction = 0.0234375; 
         } 
         else
         {
            roll_friction = 0.046875;
         }
         roll_decel_up     = 0.078125;  
         roll_decel_down   = 0.3125;    
   }
   
// Underwater physics.
   if(physic_state == 1) 
   {
      // Horizontal:
         x_speed_top       = 3;            
         x_acceleration    = 0.0234375;

         x_deceleration    = 0.5;      
         x_slope_factor    = 0.25;  

         x_air_accel       = 0.046875; 
         
      // Vertical:                           
         if(state = CS_HURT)
         {
            y_acceleration = 0.09375;
         }
         else
         {
            y_acceleration = 0.0625;
         } 
         
      // Jump:
         jump_strength     = -3.5;
         jump_release      = -2;     

      // Roll:
         roll_deceleration = 0.125;    
         roll_friction     = 0.01171875; 
         roll_decel_up     = 0.078125;  
         roll_decel_down   = 0.3125;    
   } 
 
