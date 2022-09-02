/// parallax_add_node(See par_parallax's create event for each argument)
 // Create a new parallax node/layer.
   
    // Create or resize grid if needed
    if (ParallaxNodes == -1) ParallaxNodes = ds_grid_create(16, 1);
    else                     ds_grid_resize(ParallaxNodes, 16, NumParallaxNodes+1);
    
    // Add information to grid
    ds_grid_set(ParallaxNodes,  0, NumParallaxNodes, argument0);
    ds_grid_set(ParallaxNodes,  1, NumParallaxNodes, argument1);
    ds_grid_set(ParallaxNodes,  2, NumParallaxNodes, argument2);
    ds_grid_set(ParallaxNodes,  3, NumParallaxNodes, argument3);
    ds_grid_set(ParallaxNodes,  4, NumParallaxNodes, argument4);
    ds_grid_set(ParallaxNodes,  5, NumParallaxNodes, argument5);
    ds_grid_set(ParallaxNodes,  6, NumParallaxNodes, argument6);
    ds_grid_set(ParallaxNodes,  7, NumParallaxNodes, argument7);
    ds_grid_set(ParallaxNodes,  8, NumParallaxNodes, argument8);
    ds_grid_set(ParallaxNodes,  9, NumParallaxNodes, argument9);
    ds_grid_set(ParallaxNodes, 10, NumParallaxNodes, argument10);
    ds_grid_set(ParallaxNodes, 11, NumParallaxNodes, argument11);
    ds_grid_set(ParallaxNodes, 12, NumParallaxNodes, argument12);
    ds_grid_set(ParallaxNodes, 13, NumParallaxNodes, argument13);
    ds_grid_set(ParallaxNodes, 14, NumParallaxNodes, argument14);
    ds_grid_set(ParallaxNodes, 15, NumParallaxNodes, argument15);
        
    // Done
    NumParallaxNodes += 1;

