/// bv_character_handle_badnik()
// handle badniks

 // Getting hurt.
    if not (state == CS_FLY && y_speed < 0)
            if(state != CS_JUMP && state != CS_ROLL && state != CS_SPINDASH && state != CS_HOMING && state != CS_HURT && state != CS_TRANSFORM && state != CS_GLIDE && state != CS_SLIDE && state != CS_SOMMERSAULT
            && state != CS_COMBO || state == CS_JUMP && character_id == CHAR_AMY && amy_hammer_attack == 0)
            {
               if(invincibility == 0 && instance_exists(obj_shield_insta) == false)
               {
                  var badnik;
                  badnik = bv_character_collision_check(COL_MAIN_OBJECT, x, y, par_badnik);
                  if(badnik != noone)
                  {
                    bv_character_state_hurt(badnik, false);
                  }
               }
    }
 
 // Hurting badnik:
    if((state == CS_JUMP && character_id != CHAR_AMY) || state == CS_ROLL || state == CS_SPINDASH || state == CS_FLY || state == CS_GLIDE || state == CS_SLIDE 
    || invincibility == 2 || shield_state == 1 || player_state != PLAYER_NORMAL || state == CS_HOMING || state == CS_COMBO || state == CS_SWIPE || state == CS_SOMMERSAULT
    || amy_hammer_attack != 0)
    {
       var badnik;
           badnik = bv_character_collision_check(COL_MAIN_OBJECT, x, y, par_badnik);
        if(badnik != noone)
        {
           if((state == CS_JUMP && y_speed > 0) || (state == CS_ROLL && y_speed > 0) || (invincibility == 2 && y_speed > 0))
           {
              // Destroy badnik:
                 with(badnik)
                 {
                      instance_destroy();
                 }
                 if(input_action)
                 {
                  // Rebound:                 
                     y_speed       *= -1;
                     ground         = false;
                     if(roll_rebounce == false)
                     {
                        jump_completed = false;
                     }
                 }
                 else
                 {
                     y_speed = max(-4, y_speed*-1);
                     ground         = false;
                     if(roll_rebounce == false)
                     {
                        jump_completed = false;
                     }
                 }
           }
           else if((state == CS_JUMP && y_speed <= 0) || (state == CS_ROLL && y_speed <= 0) || (state == CS_FLY && y_speed < 0)
           || state == CS_SPINDASH || state == CS_GLIDE || state == CS_SLIDE || invincibility == 2 || amy_hammer_attack = 1 || amy_hammer_attack = 5
           || state == CS_COMBO || state == CS_SWIPE || state == CS_SOMMERSAULT){
                    with(badnik)
                    {
                         instance_destroy();
                    }
                    if(y_speed <= 0 && !ground)
                    {
                       y_speed -= 1;
                    }
           }
           else if(state == CS_HOMING)
           {
                shield_usable  = true;
                state          = CS_JUMP;
                if(homing_mode = 0)
                {
                   x_speed = 0;
                }
                else
                {
                   x_speed = x_speed*.5;
                }                  
                y_speed        = -6;
                jump_completed = false;
                with(badnik)
                {
                     instance_destroy();
                }  
           }
        }
    }

