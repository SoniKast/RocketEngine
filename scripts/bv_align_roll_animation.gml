/// bv_align_roll_animation();
 // Aligns the roll sprite. You might need to tweak this depending on your sprite.
  
    if(angle == 90)
    {
       draw_x = x-2;
    }
    if(angle == 270)
    {
       draw_x = x+2;
    }    
    draw_y -= ((2+(1*angle!=0))*dcos(angle));
