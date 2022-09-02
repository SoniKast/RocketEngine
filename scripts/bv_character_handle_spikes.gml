/// bv_character_handle_spikes()
 // Script that handles spikes
 
 // Top:
    spike_top = bv_character_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, 0, obj_spike_top);   
    if(spike_top != noone && ground)
    {
       if(state != CS_HURT && invincibility == 0 && invincibility_timer <= 0)
       {
          bv_character_state_hurt(spike_top, true);
       }  
    }
 
 // Bottom:
    spike_bottom = bv_character_collision_check(COL_TOP_OBJECT, MASK_BIG, x, y, 0, obj_spike_bottom);   
    if(spike_bottom != noone)
    {
       if(state != CS_HURT && invincibility == 0 && invincibility_timer <= 0)
       {
          bv_character_state_hurt(spike_bottom, true);
       }  
    }    
 
 // Left:
    spike_left = bv_character_collision_check(COL_RIGHT_OBJECT, MASK_BIG, x, y, 0, obj_spike_left);   
    if(spike_left != noone)
    {
       if(state != CS_HURT && invincibility == 0 && invincibility_timer <= 0)
       {
          bv_character_state_hurt(spike_left, true);
       }  
    }   
 
 // Right:
    spike_right = bv_character_collision_check(COL_LEFT_OBJECT, MASK_BIG, x, y, 0, obj_spike_right);   
    if(spike_right != noone)
    {
       if(state != CS_HURT && invincibility == 0 && invincibility_timer <= 0)
       {
          bv_character_state_hurt(spike_right, true);
       }  
    }      

 
 

