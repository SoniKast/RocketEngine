/// rotate_towards(destination, source, step);
 // Rotate a value towards the destination.
 
    var difference;
    difference = argument0-argument1;
    
    if(difference == 0) return argument1;
    
    if(abs(difference) < 180)
    {
       if((difference) < 0)
       {
          argument1 -= argument2;
          if(argument1 <= argument0) 
          {
             argument1 = argument0;
          }
       }
       else
       {
          argument1 += argument2;
          if(argument1 >= argument0)
          {
             argument1 = argument0;
          }
       }
    }
    else
    {
       if(difference < 0)
       { 
          argument1 += argument2;
       }
       else
       {
          argument1 -= argument2;
       }
    }    
    return wrap_angle(argument1);
