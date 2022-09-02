/// bv_character_state_hurt(object id, spike?)
 // State for getting hurt by objects.
 
    if(state != CS_HURT && state != CS_DEATH && invincibility == 0 && amy_hammer_attack == 0)
    {
       // Hurt the character:
          if(global.crings > 0 || shield_index != 0)
          {
             // Switch state to hurt:
                state = CS_HURT;
                invincibility       =  1;
                invincibility_timer = -1;   
                
             // Rebound of object:
                if(physic_state == 0)
                {
                   y_speed = -4;
                }
                else
                {
                   y_speed = -2;
                }
                x_speed = 2*sign(x-argument0.x)
                ground  = false;
                
             // Hurt sound:
                if(argument1 == false)
                {
                   bv_audio_play(_char_hurt, global.sfx_volume);  
                }
                else
                {
                   bv_audio_play(_general_spike, global.sfx_volume);  
                }
                
             // Ring Drop:
               if(shield_index == 0)
               {
                  bv_character_ringtoss();
               }
               else
               {
                  with(shield_object)
                  {
                       instance_destroy();
                  }
                  shield_object = noone;
                  shield_index  = 0;
               }            
          }
          else
          {
             amy_hammer_attack = 0;
             combo_state = 0;
             state = CS_DEATH;
          }
    }

