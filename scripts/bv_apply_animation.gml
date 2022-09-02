/// bv_apply_animation(animation, exception)
 // Apply a animation index.
 
    if(animation_index != argument[0])
    {
       if(argument_count == 1)
       {
          animation_index = argument[0];
       }                               
       if(argument_count == 2)
       {
          if(animation_index != argument[1])
          {
             animation_index = argument[0];
          }
       }
       if(argument_count == 3)
       {
          if(animation_index != argument[1] && animation_index != argument[2])
          {
             animation_index = argument[0];
          }
       }       
       if(argument_count == 4)
       {
          if(animation_index != argument[1] && animation_index != argument[2] && animation_index != argument[3])
          {
             animation_index = argument[0];
          }
       }   
       if(argument_count == 5)
       {
          if(animation_index != argument[1] && animation_index != argument[2] && animation_index != argument[3] && animation_index != argument[4])
          {
             animation_index = argument[0];
          }
       }  
       if(argument_count == 6)
       {
          if(animation_index != argument[1] && animation_index != argument[2] && animation_index != argument[3] && animation_index != argument[4] && animation_index != argument[5])
          {
             animation_index = argument[0];
          }
       }                               
    }
