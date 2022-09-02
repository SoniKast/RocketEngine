/// draw_sprite_tiled_horizontal(sprite, image, x, y, xscale, yscale, rot, blend, alpha);
 // Draw a sprite horizontally tiled. 

    var sprite_start, sprite_end, sprite_current, sprite_step;

    // Retrieve sprite properties        
       sprite_step  = sprite_get_width(argument0);
       sprite_start = view_xview[view_current]+((argument2-view_xview[view_current]) mod sprite_step)-sprite_step;
       sprite_end   = view_xview[view_current]+view_wview[view_current]+sprite_step;
        
       for(sprite_current = sprite_start; sprite_current <= sprite_end; sprite_current += sprite_step)
       {
           draw_sprite_ext(argument0, argument1, sprite_current, argument3, argument4, argument5, argument6, argument7, argument8);
       }
