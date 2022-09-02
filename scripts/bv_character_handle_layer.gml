/// bv_character_handle_layer()
 // Script that handles layer switching.
 
 // Layer low:
    if(place_meeting(x, y, obj_layer_low))
    {
       collision_layer = 0;
    }
 
 // Layer high:
    if(place_meeting(x, y, obj_layer_high))
    {
       collision_layer = 1;
    }
       
 // Switch Layer:
    if(place_meeting(x, y, obj_layer_switch) && ground)
    {
       if(x_speed > 0)
       { 
          collision_layer = 1;
       }
       if(x_speed < 0)
       {
          collision_layer = 0;
       }
    }

