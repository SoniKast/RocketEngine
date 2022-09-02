/// bv_stage_initialization()
 // Set the init. data for the stage.
 
    switch(room)
    {
           case rm_neo_greenhill1:
           {
              // Neo Green Hill (Act 1)
                 bv_stage_set_data("NEO GREEN HILL", 1, msc_nghz, false, -1, room_height, 1);
                 break;
           }
           case rm_lavender_terminal1:
           {
              // Test Stage (Act 1)
                 bv_stage_set_data("LAVENDER TERMINAL", 1, msc_ltz, false, 448, room_height, 0);
                 break;
           }
           default: // Keep this at the bottom.
           {
              // Default/Template:
              // bv_stage_set_data(Stage Name, Act, Music, Has Water, Water Position, Death Position, Zone ID, *Loop Start, *Loop End, *Music Hz) * = Optional.
                 bv_stage_set_data("TEMPLATE", 1, msc_ltz, false, -1, room_height, 0);
                 break;
           }           
    }

