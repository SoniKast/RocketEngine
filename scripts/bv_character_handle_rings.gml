/// bv_character_handle_rings();
// Handle rings

    var ring;
    ring = bv_character_collision_check(COL_MAIN_OBJECT, x, y, obj_ring);
    var magnet_ring;
    magnet_ring = bv_character_collision_check(COL_MAIN_OBJECT, x, y, obj_ring_magnetized);
    
    // Collect rings.
    if(ring != noone && state != CS_HURT)
    {
       // Collect ring:
          if(invincibility != 1 || (invincibility == 1 && invincibility_timer > -1 && invincibility_timer <= 90))
          {
              with(ring)
              {
                   dummy_effect_create(spr_ring_sparkle, 0.4, x, y, -10, 0);
                   instance_destroy();
              }
              global.crings += 1;  
          
       // Play sound effect:     
         bv_audio_play(_general_ring, global.sfx_volume);    
         }
    }
    // Collect rings.
    if(magnet_ring != noone && state != CS_HURT)
    {
       // Collect ring:
          if(invincibility != 1 || (invincibility == 1 && invincibility_timer > -1 && invincibility_timer <= 90))
          {
              with(magnet_ring)
              {
                   dummy_effect_create(spr_ring_sparkle, 0.4, x, y, -10, 0);
                   instance_destroy();
              }
              global.crings += 1;  
          
       // Play sound effect:     
          bv_audio_play(_general_ring, global.sfx_volume);    
         }
    }
