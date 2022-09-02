// joy_x(id)
//Returns the position (from -1 to 1) of the first axis on the joystick.

if(global.dip_exists == 1)
{
return external_call(global.ljoyAxis, argument0, 0);
}

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
