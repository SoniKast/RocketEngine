/// bv_character_ringtoss()
 // Create the ring toss after getting hurt.
 
 // Play ring toss.
    bv_audio_play(_char_lose_rings, global.sfx_volume);   
    
 // Create ring variables:        
    rings_total = min(global.crings, 32);
    rings_angle = 101.25;
    rings_speed = 4;
 
 // Toss rings:
    while(rings_total)
    {
        ring = instance_create(x, y, obj_ring);
        ring.timer   = 256;        
        ring.y_speed = -dsin(round(rings_angle))*rings_speed;
        ring.x_speed =  dcos(round(rings_angle))*rings_speed;
        ring.motion  =  true;
        if(rings_total mod 2 != 0)
        {
            rings_angle  += 22.5;
            ring.x_speed *= -1;
        }   
        rings_total -= 1;
        if(rings_total == 16)
        {
            rings_speed = 2;
            rings_angle = 101.25;
        }
    }
    global.crings = 0;
 
