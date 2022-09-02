// joy_button(id, button)
//Returns true if the given button (starting at 0) is held down.

if(global.dip_exists == 1)
{
return external_call(global.ljoyButton, argument0, argument1);
}

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
