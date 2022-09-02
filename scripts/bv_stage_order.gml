/// bv_stage_order()
 // Set the zone/stage order in here.

 // Reset checkpoint data.
    global.checkpoint_x = -1;
    global.checkpoint_y = -1;
    global.checkpoint_t =  0; 
 
    switch(room)
    {
           case rm_neo_greenhill1:
           {
                 return rm_lavender_terminal1; 
                 break;
           }
           case rm_lavender_terminal1:
           {
                 return rm_credits; 
                 break;
           }
           default: // Keep this at the bottom.
           {
              // First stage, Test Stage (Act 1)
                 return rm_neo_greenhill1;
                 break;
           }               
    }

