/// bv_character_state_insta_shield()
 // This is used for the insta shield.
  
 // Sonic's insta shield.
    if(shield_usable == true)
    {
       if(state == CS_JUMP && input_action_pressed)
       {
          if(instance_exists(obj_shield_insta) == false)
          {
             shield_usable = false;
             instance_create(x, y, obj_shield_insta);         
             bv_audio_play(_shield_use_insta, global.sfx_volume);       
          }
       }
    }

