/// bv_score_multiplier(effect, x, y)
 // Multiplies score values (used on badniks).
    
 // Add to multiplier.
    if(global.cscore_mtp != 16)
    {
       global.cscore_mtp += 1;
    }
    
 // Return score.
    if(global.cscore_mtp == 1)
    {
       if(argument0 == true)
       { 
          var _score;
          _score = instance_create(argument1, argument2, obj_score); 
          _score . image_index = 1;
       }    
       return 100;
    }
    else
    if(global.cscore_mtp == 2)
    {
       if(argument0 == true)
       { 
          var _score;
          _score = instance_create(argument1, argument2, obj_score); 
          _score . image_index = 2;
       }  
       return 200;     
    }
    else
    if(global.cscore_mtp == 3)
    {
       if(argument0 == true)
       { 
          var _score;
          _score = instance_create(argument1, argument2, obj_score); 
          _score . image_index = 3;
       } 
       return 500;      
    }
    else
    if(global.cscore_mtp > 3 && global.cscore_mtp < 16)
    {
       if(argument0 == true)
       { 
          var _score;
          _score = instance_create(argument1, argument2, obj_score); 
          _score . image_index = 4;
       }  
       return 1000;     
    }
    else
    if(global.cscore_mtp > 15)
    {
       if(argument0 == true)
       { 
          var _score;
          _score = instance_create(argument1, argument2, obj_score); 
          _score . image_index = 5;
       }  
       return 10000;     
    }

