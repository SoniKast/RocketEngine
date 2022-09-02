/// bv_tail_animation_setup()
 // Script used to apply the tail parts for Miles.
 
    switch(animation_index)
    {  
           case "ROLL":
           {
                bv_tail_apply_animation(spr_char_tails_tail, 0.25, 0, 0, 0, animation_direction); 
                break;
           }                   
           default:
           {
                bv_tail_apply_animation(noone, -1, -1, -1, -1, -1);
                break;
           }
    }

