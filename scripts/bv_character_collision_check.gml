/// bv_character_collision_check(COL_?, ARGUMENTS);
 // Script that checks various sensors for collision detecting.
 
 // Main sensor:
    if(argument[0] == COL_MAIN)
    {        
    // Store mask as a temporal variable.
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.       
       mask_index = MASK_MAIN;
    
    // Test collision:
       var colTest;
       colTest = bv_character_collision(floor(argument[1]), floor(argument[2]), collision_layer);
       
    // Restore previous mask.
       mask_index = maskTemp;
       
    // Return test:      
       return colTest;     
    }
    
 // ########################################################################################################################## //
 
 // Slope sensor:
    if(argument[0] == COL_SLOPE)
    {    
    // Store mask as a temporal variable.    
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:    
       var colTest;
       colTest = bv_character_collision(floor(argument[2] + dsin(argument[4])*23),
                                        floor(argument[3] + dcos(argument[4])*23),
                                        collision_layer); 
       
    // Restore previous mask.
       mask_index = maskTemp;
                     
    // Return test:      
       return colTest;    
    }    
    
 // ########################################################################################################################## //
 
 // Slope sensor (Platform fix)
    if(argument[0] == COL_SLOPE_PLATFIX)
    {    
       if(not ground)
       {
         // Store mask as a temporal variable.    
            var maskTemp;
            maskTemp = mask_index;

         // Switch mask.           
            mask_index = argument[1];
    
         // Test collision:    
            var colTest;
            colTest = (!place_meeting(x, y, par_platform) && !bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, par_platform) && !bv_character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y-6, angle, par_platform) && place_meeting(floor(argument[2] + dsin(argument[4])*23),
                                                                                                                                                                                                                                                 floor(argument[3] + dcos(argument[4])*23),
                                                                                                                                                                                                                                                 par_platform));        
         // Restore previous mask.
            mask_index = maskTemp;
                     
         // Return test:      
            return colTest;   
       }
    }    
    
 // ########################################################################################################################## // 
 
 // Main sensor (Objects):
    if(argument[0] == COL_MAIN_OBJECT)
    {    
    // Store mask as a temporal variable.    
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = MASK_MAIN;
    
    // Test collision:    
       var colTest;
       colTest = instance_place(floor(argument[1]), floor(argument[2]), argument[3]);
       
    // Restore previous mask.
       mask_index = maskTemp;
                     
    // Return test:      
       return colTest;    
    }    

 // ########################################################################################################################## //
 
 // Top sensor:
    if(argument[0] == COL_TOP)
    { 
    // Store mask as a temporal variable.            
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.       
       mask_index = argument[1];
    
    // Test collision:         
       var colTest;
       colTest = bv_character_collision(floor(argument[2] - dsin(argument[4])*11),
                                        floor(argument[3] - dcos(argument[4])*11),
                                        collision_layer); 
       
    // Restore previous mask.                                  
       mask_index = maskTemp;                      
                   
    // Return test:                                     
       return colTest;                               
    }

 // ########################################################################################################################## //
 
 // Top sensor (Object):
    if(argument[0] == COL_TOP_OBJECT)
    {   
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.        
       mask_index = argument[1];
    
    // Test collision:               
       var colTest;
       colTest = instance_place(floor(argument[2] - (dsin(argument[4]))*11),
                                floor(argument[3] - (dcos(argument[4]))*11),
                                argument[5]); 
       
    // Restore previous mask.                                
       mask_index = maskTemp;
                                       
    // Return test:                               
       return colTest;
    } 

 // ########################################################################################################################## //
 
 // Bottom sensor:
    if(argument[0] == COL_BOTTOM)
    {   
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:         
       var colTest;
       colTest = bv_character_collision(floor(argument[2] + dsin(argument[4])*11),
                                        floor(argument[3] + dcos(argument[4])*11),
                                        collision_layer);
       
       if(!colTest && !ground && y_speed >= 0)
       {
          colTest = place_meeting(floor(argument[2] + dsin(argument[4])*11),
                                  floor(argument[3] + dcos(argument[4])*11),
                                  par_platform)
          &&      ! place_meeting(floor(argument[2]), floor(argument[3]),
                                  par_platform);
       }
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }     

 // ########################################################################################################################## //
 
 // Bottom sensor (Object):
    if(argument[0] == COL_BOTTOM_OBJECT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:         
       var colTest;
       colTest = instance_place(floor(argument[2] + (dsin(argument[4]))*11),
                                floor(argument[3] + (dcos(argument[4]))*11),
                                argument[5]); 
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }     

 // ########################################################################################################################## //
 
 // Left sensor:
    if(argument[0] == COL_LEFT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:       
       var colTest;
       colTest = bv_character_collision(floor(argument[2] - dcos(argument[4])*11),
                                        floor(argument[3] + dsin(argument[4])*11),
                                        collision_layer);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }   

 // ########################################################################################################################## //
 
 // Left sensor (Object):
    if(argument[0] == COL_LEFT_OBJECT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:       
       colTest = instance_place(floor(argument[2] - (dcos(argument[4]))*11),
                                floor(argument[3] + (dsin(argument[4]))*11),
                                argument[5]);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    } 
    
 // ########################################################################################################################## //
 
 // Left sensor (Edge):
    if(argument[0] == COL_LEFT_EDGE)
    {
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
       
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument[3]);
     
    // Test collision:                                                 
       var colTest;
       colTest = bv_character_collision(floor(argument[1] - dcos(argument[3])* 8 + dsin(argument[3])*11),
                                        floor(argument[2] + dsin(argument[3])*11 + dcos(argument[3])*11),
                                        collision_layer);
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
       return colTest;   
    }       
    
 // ########################################################################################################################## //
 
 // Left sensor (Limiter):
    if(argument[0] == COL_LEFT_LIMITER)
    {                                
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
              
    // Wrap angle.
       while(argument[1] < 0)
       {
             argument[1] += 360;
       }
       while(argument[1] >= 360)
       {
             argument[1] -= 360;
       }       
                 
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument[1]/10);
       
    // Calculate position:
       var tempOffsetX;
       tempOffsetX = x-cos(floor(argument[1]))*8+sin(floor(argument[1]))*10;
       var tempOffsetY;
       tempOffsetY = y+sin(floor(argument[1]))*8+cos(floor(argument[1]))*10;        
     
    // Test collision:                                                 
       var colTest;
       colTest = bv_character_collision(tempOffsetX, tempOffsetY, par_solid)
       &&      ! place_meeting(tempOffsetX, tempOffsetY, par_obstacle);       
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
       return colTest;              
    }   
        
 // ########################################################################################################################## //
 
 // Right sensor:
    if(argument[0] == COL_RIGHT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:       
       var colTest;
       colTest = bv_character_collision(floor(argument[2] + dcos(argument[4])*11),
                                        floor(argument[3] - dsin(argument[4])*11),
                                        collision_layer);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    }   

 // ########################################################################################################################## //
 
 // Right sensor (Object):
    if(argument[0] == COL_RIGHT_OBJECT)
    {
    // Store mask as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;

    // Switch mask.           
       mask_index = argument[1];
    
    // Test collision:       
       colTest = instance_place(floor(argument[2] + dcos(argument[4])*11),
                                floor(argument[3] - dsin(argument[4])*11),
                                argument[5]);
       
    // Restore previous mask.        
       mask_index = maskTemp;
       
    // Return test:                               
       return colTest;
    } 
    
 // ########################################################################################################################## //
 
 // Right sensor (Edge):
    if(argument[0] == COL_RIGHT_EDGE)
    {
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
       
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument[3])           
     
    // Test collision:                                                 
       var colTest;
       colTest = bv_character_collision(floor(argument[1] + dcos(argument[3])* 8 + dsin(argument[3])*11),
                                        floor(argument[2] - dsin(argument[3])*11 + dcos(argument[3])*11),
                                        collision_layer);
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
        return colTest;    
    }       
    
 // ########################################################################################################################## //
 
 // Right sensor (Limiter):
    if(argument[0] == COL_RIGHT_LIMITER)
    {                                
    // Store mask and sprite as a temporal variable.       
       var maskTemp;
       maskTemp = mask_index;
       
       var spriteTemp;
       spriteTemp[0] = sprite_index;
       spriteTemp[1] = image_index;
              
    // Wrap angle.
       while(argument[1] < 0)
       {
             argument[1] += 360;
       }
       while(argument[1] >= 360)
       {
             argument[1] -= 360;
       }       
              
    // Switch mask and sprite.
       mask_index   = MASK_LINES;
       sprite_index = MASK_LINES;
       image_index  = floor(argument[1]/10);

    // Calculate position:
       var tempOffsetX;
       tempOffsetX = x+cos(floor(argument[1]))*8+sin(floor(argument[1]))*10;
       var tempOffsetY;
       tempOffsetY = y-sin(floor(argument[1]))*8+cos(floor(argument[1]))*10;        
     
    // Test collision:                                                 
       var colTest;
       colTest = bv_character_collision(tempOffsetX, tempOffsetY, par_solid)
       &&      ! place_meeting(tempOffsetX, tempOffsetY, par_obstacle);       
       
    // Restore previous mask and sprite.        
       mask_index   = maskTemp;
       sprite_index = spriteTemp[0];
       image_index  = spriteTemp[1];
        
    // Return test:                               
       return colTest;              
    }              
    
 // ########################################################################################################################## //
 
 // Edge exception:
    if(argument[0] == COL_EDGE_LINE)
    {
       // Store mask as a temporal variable.    
          var maskTemp;
          maskTemp = mask_index;

       // Switch mask.           
          mask_index = MASK_EDGE_LINE;
    
       // Test collision:    
          var colTest;
          if(x_speed > 0)
          {
             colTest = instance_place(x+6, y, par_terrain);
          }
          else if(x_speed < 0)
          {
             colTest = instance_place(x-6, y, par_terrain);          
          }
          else colTest = false;
                 
       // Restore previous mask.
          mask_index = maskTemp;
                     
       // Return test:      
          return colTest;         
    }
