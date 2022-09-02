/// bv_stage_play_bgm(room id, music id, loopstart, loopend, hz);
 // Play the stages background music. (This is called in bv_stage_set_data())
  
    if(room == argument0)
    {
       if(argument2 != -1)
       {
          sfx.bgm_loop_start = argument2;
          sfx.bgm_loop_end   = argument3;
          sfx.bgm_hz         = argument4;
       }
       else
       {
          sfx.bgm_loop_start = -1;
          sfx.bgm_loop_end   = -1;
          sfx.bgm_hz         = -1;       
       }
       global.bgm_handle = bv_audio_loop(argument1, global.bgm_volume);       
    }
 

