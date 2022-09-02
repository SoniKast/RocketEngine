/// in_view()
 // Checks if an instance is inside the view. 
 // This can be used to prevent objects from falling of the stage if terrain doesn't load fast enough.
 
    if((bbox_right > view_xview[0]) && (bbox_left < view_xview[0] + view_wview[0]) && (bbox_bottom > view_yview[0]) && (bbox_top < view_yview[0] + view_hview[0])) 
    {
       return true;
    }
    else return false;
