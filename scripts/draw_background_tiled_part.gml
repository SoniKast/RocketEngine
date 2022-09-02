/// draw_background_tiled_part(background, left, top, width, height, x, y, x sep, y sep, sprite/bg)
 // Draw a part of a background, horizontally tiled.

    var BackgroundXStart, BackgroundXEnd, BackgroundXCurrent, BackgroundXStep;
    var BackgroundYStart, BackgroundYEnd, BackgroundYCurrent, BackgroundYStep;
 
    // Retrieve background properties        
    BackgroundXStep  = argument[3]+argument[7];
    BackgroundXStart = view_xview[view_current]+((argument[5]-view_xview[view_current]) mod BackgroundXStep)-BackgroundXStep;
    BackgroundXEnd   = view_xview[view_current]+view_wview[view_current]+BackgroundXStep;
    BackgroundYStep  = argument[4]+argument[8];
    BackgroundYStart = view_yview[view_current]+((argument[6]-view_yview[view_current]) mod BackgroundYStep)-BackgroundYStep;
    BackgroundYEnd   = view_yview[view_current]+view_hview[view_current]+BackgroundYStep;
        
    for (BackgroundYCurrent = BackgroundYStart; BackgroundYCurrent <= BackgroundYEnd; BackgroundYCurrent += BackgroundYStep)
     for (BackgroundXCurrent = BackgroundXStart; BackgroundXCurrent <= BackgroundXEnd; BackgroundXCurrent += BackgroundXStep)
         draw_background_part(argument[0], argument[1], argument[2], argument[3], argument[4], BackgroundXCurrent, BackgroundYCurrent);
