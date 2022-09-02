/// bv_update_animation_index()
 // Script used to assign a animation.

 // Sonic:
    if(character_id = CHAR_SONIC && player_state = PLAYER_NORMAL)
    {
       bv_set_animation("STAND",                  spr_char_sonic_stand,  0.20, 7, 0, -1, "", 0);
       bv_set_animation("TURN",                    spr_char_sonic_turn,  0.25, 0, 0,  0, "STAND", 0);  
       bv_set_animation("IDLE",                    spr_char_sonic_idle,  0.15, 2, 1,  3, "STAND", 0);  
       bv_set_animation("LOOK",                    spr_char_sonic_look, 0.15,  5, 2,  -1, "", 0);    
       bv_set_animation("LOOK END",            spr_char_sonic_look_end, 0.18,  1, 0,  0, "STAND", 0);       
       bv_set_animation("WALK",                    spr_char_sonic_walk, 0.25,  7, 0, -1, "", 0); 
       bv_set_animation("RUN",                      spr_char_sonic_run, 0.25,  3, 0, -1, "", 0);  
       bv_set_animation("ROLL",                    spr_char_sonic_roll, 0.5,   3, 0, -1, "", 0);
       bv_set_animation("SPINDASH",            spr_char_sonic_spindash, 0.8,  7, 4, -1, "", 0);
       bv_set_animation("SPINDASH REV",        spr_char_sonic_spindash, 0.8,  3, 0, 2, "SPINDASH", 0);
       bv_set_animation("CROUCH",                spr_char_sonic_crouch, 0.6,   3, 0,  0, "", 0);    
       bv_set_animation("CROUCH UP",          spr_char_sonic_crouch_up, 0.40,  2, 0,  0, "STAND", 0);
       bv_set_animation("SPRING",                spr_char_sonic_spring, 0.25,  3, 1, 3, "FALL", 0);     
       bv_set_animation("FALL",                 spr_char_sonic_falling, 0.35,  8, 6, -1, "", 0);
       bv_set_animation("FALL SHORT",         spr_char_sonic_fallshort, 0.55,  4, 2, -1, "", 0);
       bv_set_animation("AIR DASH",            spr_char_sonic_air_dash, 0.55,  6, 4, -1, "", 0);
       bv_set_animation("SPRING2",            spr_char_sonic_corkscrew, 0.25,  10, 0, 1, "FALL SHORT", 5);
       bv_set_animation("CORKSCREW",          spr_char_sonic_corkscrew, 0.25,  10, 0, -1, "", 0);
       bv_set_animation("SKID",                    spr_char_sonic_skid, 0.35,  2, 1,  0, "", 0); 
       bv_set_animation("SKID TURN",          spr_char_sonic_skid_turn, 0.75,  4, 0,  0, "", 0);               
       bv_set_animation("BALANCE",            spr_char_sonic_balance_1, 0.5,  8, 1, -1, "", 0); 
       bv_set_animation("BALANCE 2",          spr_char_sonic_balance_2, 0.5,  8, 1, -1, "", 0);  
       bv_set_animation("PUSH",                    spr_char_sonic_push, 0.35,  8, 1, -1, "", 0);   
       bv_set_animation("GRIND",                  spr_char_sonic_grind, 0.35,  1, 0, -1, "", 0);   
       bv_set_animation("GRIND LOWER",        spr_char_sonic_grind_low, 0.35,  1, 0, -1, "", 0);       
       bv_set_animation("SOMMERSAULT A",  spr_char_sonic_sommersault_a, 0.25,  3, 0, -1, "", 0);       
       bv_set_animation("SOMMERSAULT B",  spr_char_sonic_sommersault_b, 0.5,   10, 10, -1, "", 0);       
       bv_set_animation("SLIDE",                  spr_char_sonic_slide, 0.45,  3, 0, -1, "", 0);
       bv_set_animation("BREATHE",               spr_char_sonic_breath, 0.20,  1, 0,  0, "WALK", 0);              
       bv_set_animation("HURT",                    spr_char_sonic_hurt, 0.25,  3, 3,  0, "", 0);        
       bv_set_animation("DIE",                      spr_char_sonic_die, 0.15,  4, 0,  0, "", 0);     
       bv_set_animation("TRANSFORM",          spr_char_sonic_transform, 0.30, 16, 11, 0, "", 0);     
       bv_set_animation("GOAL",                    spr_char_sonic_goal, 0.25,  11, 4, -1, "", 0); 
       bv_set_animation("GOAL CAPSULE",        spr_char_sonic_cap_goal, 0.15,  17, 17, 0, "", 0); 
       bv_set_animation("PULL UP",              spr_char_sonic_pull_up, 0.25, 4, 4, 0, "", 0);          
    }
    if(character_id = CHAR_SONIC && player_state = PLAYER_SUPER)
    {
       bv_set_animation("STAND",                  spr_char_super_sonic_stand,  0.15, 7, 0, -1, "", 0);
       bv_set_animation("TURN",                    spr_char_super_sonic_turn,  0.25, 0, 0, 0, "STAND", 0);     
       bv_set_animation("LOOK",                    spr_char_super_sonic_look, 0.15,  5, 2,  -1, "", 0);    
       bv_set_animation("LOOK END",            spr_char_super_sonic_look_end, 0.18,  1, 0,  0, "STAND", 0);       
       bv_set_animation("WALK",                    spr_char_super_sonic_walk, 0.25,  7, 0, -1, "", 0); 
       bv_set_animation("RUN",                      spr_char_super_sonic_run, 0.25,  3, 0, -1, "", 0);  
       bv_set_animation("ROLL",                    spr_char_super_sonic_roll, 0.5,   3, 0, -1, "", 0);
       bv_set_animation("SPINDASH",            spr_char_super_sonic_spindash, 0.8,  7, 4, -1, "", 0);
       bv_set_animation("SPINDASH REV",        spr_char_super_sonic_spindash, 0.8,  3, 0, 2, "SPINDASH", 0);
       bv_set_animation("CROUCH",                spr_char_super_sonic_crouch, 0.6,   3, 0,  0, "", 0);    
       bv_set_animation("CROUCH UP",          spr_char_super_sonic_crouch_up, 0.40,  2, 0,  0, "STAND", 0);
       bv_set_animation("SPRING",                spr_char_super_sonic_spring, 0.25,  3, 1, 3, "FALL", 0);     
       bv_set_animation("FALL",                 spr_char_super_sonic_falling, 0.35,  8, 6, -1, "", 0);
       bv_set_animation("FALL SHORT",         spr_char_super_sonic_fallshort, 0.55,  4, 2, -1, "", 0);
       bv_set_animation("AIR DASH",            spr_char_super_sonic_air_dash, 0.55,  6, 4, -1, "", 0);
       bv_set_animation("SPRING2",            spr_char_super_sonic_corkscrew, 0.20,  10, 0, 1, "FALL SHORT", 5);
       bv_set_animation("CORKSCREW",          spr_char_super_sonic_corkscrew, 0.20,  10, 0, -1, "", 0);
       bv_set_animation("SKID",                    spr_char_super_sonic_skid, 0.35,  2, 1,  0, "", 0); 
       bv_set_animation("SKID TURN",          spr_char_super_sonic_skid_turn, 0.75,  4, 0,  0, "", 0);                 
       bv_set_animation("BALANCE",            spr_char_super_sonic_balance_1, 0.5,  8, 1, -1, "", 0); 
       bv_set_animation("BALANCE 2",          spr_char_super_sonic_balance_2, 0.5,  8, 1, -1, "", 0);  
       bv_set_animation("PUSH",                    spr_char_super_sonic_push, 0.35,  8, 1, -1, "", 0);   
       bv_set_animation("GRIND",                  spr_char_super_sonic_grind, 0.35,  1, 0, -1, "", 0);   
       bv_set_animation("GRIND LOWER",        spr_char_super_sonic_grind_low, 0.35,  1, 0, -1, "", 0);       
       bv_set_animation("SOMMERSAULT A",  spr_char_super_sonic_sommersault_a, 0.25,  3, 0, -1, "", 0);       
       bv_set_animation("SOMMERSAULT B",  spr_char_super_sonic_sommersault_b, 0.5,   10, 10, -1, "", 0);       
       bv_set_animation("SLIDE",                  spr_char_super_sonic_slide, 0.45,  3, 0, -1, "", 0);      
       bv_set_animation("BREATHE",               spr_char_super_sonic_breath, 0.20,  1, 0,  0, "WALK", 0);              
       bv_set_animation("HURT",                    spr_char_super_sonic_hurt, 0.50,  3, 0,  0, "", 0);        
       bv_set_animation("DIE",                            spr_char_sonic_die, 0.25,  4, 0,  0, "", 0);     
       bv_set_animation("GOAL",                          spr_char_sonic_goal, 0.25,  11, 4, -1, "", 0);
       bv_set_animation("GOAL CAPSULE",              spr_char_sonic_cap_goal, 0.15,  17, 17, 0, "", 0);   
       bv_set_animation("PULL UP",              spr_char_super_sonic_pull_up, 0.25, 4, 4, 0, "", 0);       
    }   
    
 // Tails:
    if(character_id = CHAR_TAILS)
    {
       bv_set_animation("STAND",                  spr_char_tails_stand,  0.15, 7, 0, -1, "", 0);
       bv_set_animation("TURN",                    spr_char_tails_turn,  0.25, 0, 0,  0, "STAND", 0);  
       bv_set_animation("NO IDLE LOL FUCK YOU",    spr_char_tails_idle,  0.15, 7, 0,  3, "STAND", 0);  
       bv_set_animation("LOOK",                    spr_char_tails_look, 0.15,  5, 2,  -1, "", 0);    
       bv_set_animation("LOOK END",            spr_char_tails_look_end, 0.18,  2, 2,  0, "STAND", 0);       
       bv_set_animation("WALK",                    spr_char_tails_walk, 0.25,  15, 0, -1, "", 0); 
       bv_set_animation("RUN",                      spr_char_tails_run, 0.25,  15, 0, -1, "", 0);  
       bv_set_animation("ROLL",                    spr_char_tails_roll, 0.5,   3, 0, -1, "", 0);
       bv_set_animation("SPINDASH",            spr_char_tails_spindash, 0.8,  7, 4, -1, "", 0);
       bv_set_animation("SPINDASH REV",        spr_char_tails_spindash, 0.8,  3, 0, 2, "SPINDASH", 0);
       bv_set_animation("CROUCH",                spr_char_tails_crouch, 0.15, 12, 2,  -1, "", 0);    
       bv_set_animation("CROUCH UP",          spr_char_tails_crouch_up, 0.40,  1, 1,  0, "STAND", 0);
       bv_set_animation("SPRING",                spr_char_tails_spring, 0.25,  3, 1, 3, "FALL", 0);     
       bv_set_animation("FALL",                 spr_char_tails_falling, 0.35,  8, 6, -1, "", 0);
       bv_set_animation("FALL SHORT",         spr_char_tails_fallshort, 0.25,  3, 1, -1, "", 0);
       bv_set_animation("SPRING2",            spr_char_tails_corkscrew, 0.25,  10, 0, 1, "FALL SHORT", 5);
       bv_set_animation("CORKSCREW",          spr_char_tails_corkscrew, 0.25,  10, 0, -1, "", 0);
       bv_set_animation("SKID",                   spr_char_tails_skid, 0.35,  2, 1,  0, "", 0); 
       bv_set_animation("SKID TURN",          spr_char_tails_skid_turn, 0.75,  4, 0,  0, "", 0);               
       bv_set_animation("BALANCE",            spr_char_tails_balance_1, 0.20,  8, 1, -1, "", 0); 
       bv_set_animation("BALANCE 2",          spr_char_tails_balance_2, 0.20,  8, 1, -1, "", 0);  
       bv_set_animation("PUSH",                    spr_char_tails_push, 0.25,  7, 0, -1, "", 0);      
       bv_set_animation("HURT",                    spr_char_tails_hurt, 0.25,  3, 3,  0, "", 0);        
       bv_set_animation("BREATHE",               spr_char_tails_breath, 0.20,  1, 0,  0, "WALK", 0);              
       bv_set_animation("DIE",                      spr_char_tails_die, 0.15,  3, 0,  0, "", 0);    
       bv_set_animation("FLY",                      spr_char_tails_fly, 0.25, 15, 0, -1, "", 0);
       bv_set_animation("FLY DROP",           spr_char_tails_fly_tired, 0.25,  9, 2, -1, "", 0);  
       bv_set_animation("SWIM",                    spr_char_tails_swim, 0.20,  8, 1, -1, "", 0); 
       bv_set_animation("SWIM DROP",          spr_char_tails_fly_tired, 0.25,  9, 2, -1, "", 0);  
       bv_set_animation("SWIPE",                  spr_char_tails_swipe, 0.35,  7, 0,  0, "", 0); 
       bv_set_animation("GOAL",                    spr_char_tails_goal, 0.25,  15, 8, -1, "", 0);    
       bv_set_animation("GOAL CAPSULE",        spr_char_tails_cap_goal, 0.15,  25, 19, -1, "", 0);  
       bv_set_animation("PULL UP",              spr_char_tails_pull_up, 0.25, 4, 4, 0, "", 0);
    }
    
 // Knuckles:
    if(character_id = CHAR_KNUX)
    {
       bv_set_animation("STAND",                  spr_char_knux_stand,  0.20, 5, 0, -1, "", 0);
       bv_set_animation("TURN",                    spr_char_knux_turn,  0.25, 0, 0,  0, "STAND", 0);  
       bv_set_animation("IDLE",                    spr_char_knux_idle,  0.15, 4, 0,  3, "STAND", 0);  
       bv_set_animation("LOOK",                    spr_char_knux_look, 0.15,  2, 2,  -1, "", 0);    
       bv_set_animation("LOOK END",            spr_char_knux_look_end, 0.18,  2, 0,  0, "STAND", 0);       
       bv_set_animation("WALK",                    spr_char_knux_walk, 0.25,  7, 0, -1, "", 0); 
       bv_set_animation("RUN",                      spr_char_knux_run, 0.25,  7, 0, -1, "", 0);  
       bv_set_animation("ROLL",                    spr_char_knux_roll, 0.5,   3, 0, -1, "", 0);
       bv_set_animation("SPINDASH",            spr_char_knux_spindash, 0.8,  7, 4, -1, "", 0);
       bv_set_animation("SPINDASH REV",        spr_char_knux_spindash, 0.8,  3, 0, 2, "SPINDASH", 0);
       bv_set_animation("CROUCH",                spr_char_knux_crouch, 0.6,   3, 0,  0, "", 0);    
       bv_set_animation("CROUCH UP",          spr_char_knux_crouch_up, 0.40,  2, 0,  0, "STAND", 0);
       bv_set_animation("LAND",                    spr_char_knux_land, 0.35,  2, 2,  0, "STAND", 0);
       bv_set_animation("SPRING",                spr_char_knux_spring, 0.25,  3, 1, 3, "FALL", 0);     
       bv_set_animation("FALL",                 spr_char_knux_falling, 0.35,  8, 6, -1, "", 0);
       bv_set_animation("FALL SHORT",         spr_char_knux_fallshort, 0.25,  4, 2, -1, "", 0);
       bv_set_animation("GLIDE DROP",         spr_char_knux_fallshort, 0.25,  4, 2, -1, "", 0);
       bv_set_animation("SPRING2",            spr_char_knux_corkscrew, 0.25,  10, 0, 1, "FALL SHORT", 5);
       bv_set_animation("CORKSCREW",          spr_char_knux_corkscrew, 0.25,  10, 0, -1, "", 0);
       bv_set_animation("SKID",                    spr_char_knux_skid, 0.35,  2, 1,  0, "", 0); 
       bv_set_animation("SKID TURN",          spr_char_knux_skid_turn, 0.75,  4, 0,  0, "", 0);               
       bv_set_animation("BALANCE",            spr_char_knux_balance_1, 0.20,  8, 1, -1, "", 0); 
       bv_set_animation("BALANCE 2",          spr_char_knux_balance_2, 0.20,  8, 1, -1, "", 0);  
       bv_set_animation("PUSH",                    spr_char_knux_push, 0.25,  8, 1, -1, "", 0);      
       bv_set_animation("HURT",                    spr_char_knux_hurt, 0.25,  3, 3,  0, "", 0);        
       bv_set_animation("BREATHE",               spr_char_knux_breath, 0.20,  1, 0,  0, "WALK", 0);              
       bv_set_animation("DIE",                      spr_char_knux_die, 0.15,  4, 0,  0, "", 0);    
       bv_set_animation("GLIDE",                  spr_char_knux_glide, 0.25,  1, 0, -1, "", 0);
       bv_set_animation("GLIDE TURN",        spr_char_knux_glide_turn, 0.25,  0, 0,  0, "", 0);  
       bv_set_animation("CLIMB IDLE",        spr_char_knux_climb_idle, 0.55,  0, 0, -1, "", 0); 
       bv_set_animation("CLIMB",                  spr_char_knux_climb, 0.25,  5, 0, -1, "", 0);  
       bv_set_animation("SLIDE",                  spr_char_knux_slide, 0.25,  1, 0, -1, "", 0);  
       bv_set_animation("CLIMB LEDGE",      spr_char_knux_climb_ledge, 0.20,  4, 0, -1, "STAND", 0);  
       bv_set_animation("COMBO A",              spr_char_knux_combo_a, 0.20, 4, 0,  0, "", 0);
       bv_set_animation("COMBO B",              spr_char_knux_combo_b, 0.20, 4, 0,  0, "", 0);
       bv_set_animation("COMBO FINISH",    spr_char_knux_combo_finish, 0.35, 8, 0,  0, "FALL SHORT", 0);
       bv_set_animation("GOAL",                    spr_char_knux_goal, 0.25, 8, 1, -1, "", 0);      
       bv_set_animation("GOAL CAPSULE",        spr_char_knux_cap_goal, 0.15, 15, 15, 0, "", 0);  
       bv_set_animation("PULL UP",              spr_char_knux_pull_up, 0.25, 4, 4, 0, "", 0);
       bv_set_animation("SWIM",                    spr_char_knux_swim, 0.25, 5, 0, -1, "", 0);
       bv_set_animation("STROKE",                spr_char_knux_stroke, 0.10, 5, 0, -1, "", 0);
       bv_set_animation("STROKE LOOK",      spr_char_knux_stroke_look, 0.10, 5, 0, -1, "", 0);
    }
    
 // Amy:
    if(character_id = CHAR_AMY)
    {
       bv_set_animation("STAND",                  spr_char_amy_stand,  0.15, 7, 0, -1, "", 0);
       bv_set_animation("TURN",                    spr_char_amy_turn,  0.25, 0, 0,  0, "STAND", 0);  
    // bv_set_animation("IDLE",                    spr_char_amy_idle,  0.15, 2, 1,  3, "STAND", 0);  
       bv_set_animation("LOOK",                    spr_char_amy_look, 0.15,  6, 6,  -1, "", 0);    
       bv_set_animation("LOOK END",            spr_char_amy_look_end, 0.18,  2, 0,  0, "STAND", 0);       
       bv_set_animation("WALK",                    spr_char_amy_walk, 0.25,  7, 0, -1, "", 0); 
       bv_set_animation("RUN",                      spr_char_amy_run, 0.15,  5, 0, -1, "", 0);  
       bv_set_animation("JUMP",                    spr_char_amy_jump, 0.35, 11, 9, -1, "", 0);
       bv_set_animation("CROUCH",                spr_char_amy_crouch, 0.6,   2, 2,  0, "", 0);    
       bv_set_animation("CROUCH UP",          spr_char_amy_crouch_up, 0.40,  1, 0,  0, "STAND", 0);
       bv_set_animation("SPRING",                spr_char_amy_spring, 0.25,  2, 0, 3, "FALL", 0);     
       bv_set_animation("FALL",                 spr_char_amy_falling, 0.35,  8, 6, -1, "", 0);
       bv_set_animation("FALL SHORT",         spr_char_amy_fallshort, 0.55,  4, 2, -1, "", 0);
       bv_set_animation("SPRING2",            spr_char_amy_corkscrew, 0.25,  10, 0, 1, "FALL SHORT", 5);
       bv_set_animation("CORKSCREW",          spr_char_amy_corkscrew, 0.25,  10, 0, -1, "", 0);
       bv_set_animation("SKID",                    spr_char_amy_skid, 0.35,  3, 3,  0, "", 0); 
       bv_set_animation("SKID TURN",          spr_char_amy_skid_turn, 0.75,  4, 0,  0, "", 0);               
       bv_set_animation("BALANCE",            spr_char_amy_balance_1, 0.5,  4, 2, -1, "", 0); 
       bv_set_animation("BALANCE 2",          spr_char_amy_balance_2, 0.5,  5, 3, -1, "", 0);  
       bv_set_animation("PUSH",                    spr_char_amy_push, 0.25,  7, 0, -1, "STAND", 0);   
       bv_set_animation("GRIND",                  spr_char_amy_grind, 0.35,  1, 0, -1, "", 0);   
       bv_set_animation("GRIND LOWER",        spr_char_amy_grind_low, 0.35,  1, 0, -1, "", 0);   
       bv_set_animation("BREATHE",               spr_char_amy_breath, 0.20,  1, 0,  0, "WALK", 0);              
       bv_set_animation("HURT",                    spr_char_amy_hurt, 0.25,  3, 3,  0, "", 0);        
       bv_set_animation("DIE",                      spr_char_amy_die, 0.15,  4, 0,  0, "", 0);        
       bv_set_animation("HAMMER PUNCH",     spr_char_amy_hammer_punch, 0.55,  23, 0, 0, "", 0);         
       bv_set_animation("HAMMER PUNCH 2",    spr_char_amy_hammer_punch2, 0.60,  26, 0, 0, "", 0);        
       bv_set_animation("HAMMER SPIN",       spr_char_amy_hammer_spin, 0.5,  8, 3, -1, "", 0);        
       bv_set_animation("HAMMER AIR",   spr_char_amy_hammer_air_punch, 0.35, 9, 9, 0, "FALL SHORT", 0);    
       bv_set_animation("HAMMER FLIP",       spr_char_amy_hammer_flip, 0.4, 9, 2, 2, "FALL SHORT", 0); 
       bv_set_animation("GOAL",                     spr_char_amy_goal, 0.25, 15, 5, -1, "", 0);    
       bv_set_animation("GOAL CAPSULE",         spr_char_amy_cap_goal, 0.15, 29, 29, 0, "", 0); 
       bv_set_animation("PULL UP",               spr_char_amy_pull_up, 0.25, 4, 4, 0, "", 0);    
       bv_set_animation("SHORT HOP",            spr_char_amy_shorthop, 0.25, 2, 0, -1, "", 0);  
       bv_set_animation("DIVE",                     spr_char_amy_dive, 0.50, 4, 2, -1, "", 0);   
       bv_set_animation("DIVE END",             spr_char_amy_dive_end, 0.50, 4, 3, 2, "CROUCH UP", 0);         
    }
    
 // Shadow:
    if(character_id = CHAR_SHADOW)
    {
       bv_set_animation("STAND",                  spr_char_shadow_stand,  0.15, 5, 0, -1, "", 0);
       bv_set_animation("TURN",                    spr_char_shadow_turn,  0.25, 0, 0,  0, "STAND", 0);  
       bv_set_animation("IDLE",                    spr_char_shadow_idle,  0.15, 3, 2,  3, "STAND", 0);  
       bv_set_animation("LOOK",                    spr_char_shadow_look, 0.15,  2, 2,  -1, "", 0);    
       bv_set_animation("LOOK END",            spr_char_shadow_look_end, 0.18,  1, 0,  0, "STAND", 0);       
       bv_set_animation("WALK",                    spr_char_shadow_walk, 0.25,  7, 0, -1, "", 0); 
       bv_set_animation("RUN",                      spr_char_shadow_run, 0.15,  9, 2, -1, "", 0);  
       bv_set_animation("ROLL",                    spr_char_shadow_roll, 0.5,   3, 0, -1, "", 0);
       bv_set_animation("SPINDASH",            spr_char_shadow_spindash, 0.8,  7, 4, -1, "", 0);
       bv_set_animation("SPINDASH REV",        spr_char_shadow_spindash, 0.8,  3, 0, 2, "SPINDASH", 0);
       bv_set_animation("CROUCH",                spr_char_shadow_crouch, 0.6,   3, 3,  0, "", 0);    
       bv_set_animation("CROUCH UP",          spr_char_shadow_crouch_up, 0.40,  2, 0,  0, "STAND", 0);
       bv_set_animation("SPRING",                spr_char_shadow_spring, 0.25,  3, 1, 3, "FALL", 0);     
       bv_set_animation("FALL",                 spr_char_shadow_falling, 0.35,  8, 6, -1, "", 0);
       bv_set_animation("FALL SHORT",         spr_char_shadow_fallshort, 0.55,  4, 2, -1, "", 0);
       bv_set_animation("SPRING2",            spr_char_shadow_corkscrew, 0.25,  10, 0, 1, "FALL SHORT", 5);
       bv_set_animation("CORKSCREW",          spr_char_shadow_corkscrew, 0.25,  10, 0, -1, "", 0);
       bv_set_animation("SKID",                    spr_char_shadow_skid, 0.35,  3, 3,  0, "", 0); 
       bv_set_animation("SKID TURN",          spr_char_shadow_skid_turn, 0.75,  4, 0,  0, "", 0);               
       bv_set_animation("BALANCE",            spr_char_shadow_balance_1, 0.5,  8, 1, -1, "", 0); 
       bv_set_animation("BALANCE 2",          spr_char_shadow_balance_2, 0.5,  8, 1, -1, "", 0);  
       bv_set_animation("PUSH",                    spr_char_shadow_push, 0.25,  7, 1, -1, "", 0);   
       bv_set_animation("GRIND",                  spr_char_shadow_grind, 0.35,  1, 0, -1, "", 0);   
       bv_set_animation("GRIND LOWER",        spr_char_shadow_grind_low, 0.35,  1, 0, -1, "", 0);   
       bv_set_animation("BREATHE",               spr_char_shadow_breath, 0.20,  1, 0,  0, "WALK", 0);              
       bv_set_animation("HURT",                    spr_char_shadow_hurt, 0.25,  3, 3,  0, "", 0);        
       bv_set_animation("DIE",                      spr_char_shadow_die, 0.15,  4, 0,  0, "", 0);     
       bv_set_animation("SPEAR",                  spr_char_shadow_spear, 0.25, 3, 0, 0, "", 0); 
       bv_set_animation("GOAL",                    spr_char_shadow_goal, 0.25,  11, 4, -1, "", 0);      
       bv_set_animation("GOAL CAPSULE",        spr_char_shadow_cap_goal, 0.15,  17, 17, 0, "", 0);   
       bv_set_animation("PULL UP",              spr_char_shadow_pull_up, 0.25, 4, 4, 0, "", 0);   
    }

