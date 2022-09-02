/// scr_fade_to(id or number);
    /*Example:
        with instance_create(x, y, obj_fade_to)
        {
            fade_to = -1; will end the game.
        }
    */
    // scr_fade_to(room) will go to some room.
    // scr_fade_to(0) will go to the next room.

    // Where you want to go?
        switch(argument0)
        {
            case -1:
                game_end();
            break;
            case 0:
                room_goto_next();
            break;
            default:
                sound_stop_all();
                room_goto(argument0);
            break;
        }
