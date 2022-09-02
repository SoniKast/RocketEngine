/// bv_character_calculate_angle(x, y, angle)
 // Calculates and returns the surface angle, given at the position & angle.
 
 // Store mask as a temporal variable.
    var maskTemp;
    maskTemp = mask_index;
    
 // Switch mask.
    mask_index = MASK_DOT;

 // Limit the angle.
    argument2 = (round(argument2/10)*10);
    
 // Set starting position of each sensor:
    var xPoint;
    xPoint[0] = (argument0 - dcos(argument2)*7);
    xPoint[1] = (argument0 + dcos(argument2)*7);
    
    var yPoint;
    yPoint[0] = (argument1 + dsin(argument2)*7);
    yPoint[1] = (argument1 - dsin(argument2)*7);
    
 // Push down sensors in order to know the angle:
    repeat(25)
    {
           if(bv_character_collision(floor(xPoint[0]), floor(yPoint[0]), collision_layer) == false)
           {
              xPoint[0] += dsin(argument2);
              yPoint[0] += dcos(argument2);
           }
           if(bv_character_collision(floor(xPoint[1]), floor(yPoint[1]), collision_layer) == false)
           {
              xPoint[1] += dsin(argument2);
              yPoint[1] += dcos(argument2);
           }           
    }

 // Restore old mask:
    mask_index = maskTemp;
    
 // Return calculation:
    return (floor(point_direction(xPoint[0], yPoint[0], xPoint[1], yPoint[1])));

