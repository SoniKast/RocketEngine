/// bv_audio_loop(id, volume);
 // Play a sound effect.

       sndID = audio_play_sound(argument0, 0, 1);
               audio_sound_gain(sndID, argument1, 0);
               return sndID;
 
