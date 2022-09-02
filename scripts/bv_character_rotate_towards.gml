/// bv_character_rotate_towards(destination, source, step)

    var v_angle_difference;
    v_angle_difference = argument0-argument1;

    // -------------------------------------------------------------------------------------
    if (v_angle_difference == 0) return argument0;
    
    if (abs(v_angle_difference) < 180)
    {
        if ((v_angle_difference) < 0)
        {
            argument1 -= argument2;
            if (argument1 <= argument0) argument1 = argument0;
        }
        else
        {
            argument1 += argument2;
            if (argument1 >= argument0) argument1 = argument0;
        }
    }
    else
    {
        if ((v_angle_difference) < 0) argument1 += argument2;
        else                        argument1 -= argument2;    
    }
    
    return wrap_angle(argument1);
