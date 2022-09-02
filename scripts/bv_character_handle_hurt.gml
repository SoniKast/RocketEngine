/// bv_character_handle_hurt();
 // Script that handles the hurting objects.
 
    var hurt;
        hurt = bv_character_collision_check(COL_MAIN_OBJECT, x, y, par_hurt);
    if(hurt != noone)
    {
       bv_character_state_hurt(hurt, false);
    }
    
    var hurt_ind;
        hurt_ind = bv_character_collision_check(COL_MAIN_OBJECT, x, y, par_hurt_indestructible);
    if(hurt_ind != noone)
    {
       bv_character_state_hurt(hurt_ind, false);
    }
