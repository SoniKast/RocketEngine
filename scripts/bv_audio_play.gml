/// bv_audio_play(id, volume, unmute);
 // Play a sound effect.

       sndID = audio_play_sound(argument0, 0, 0);
               audio_sound_gain(sndID, argument1, 0);
               return sndID;
 
