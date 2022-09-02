/// draw_background_tiled_vertical_part(background, left, top, width, height, x, y, sep, sprite/bg)
 // Draw a part of a background, horizontally tiled.
 
    var BackgroundStart, BackgroundEnd, BackgroundStep;
 
    // Retrieve background properties 
    BackgroundStep  = argument[4]+argument[7];
    BackgroundStart = view_yview[view_current]+((argument[6]-view_yview[view_current]) mod BackgroundStep)-BackgroundStep;
    BackgroundEnd   = view_yview[view_current]+view_hview[view_current]+BackgroundStep;
    
    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
        draw_background_part(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], BackgroundStart);   
        BackgroundStart += BackgroundStep;
    }
