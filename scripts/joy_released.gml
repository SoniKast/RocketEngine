// joy_released(id, button)
//Returns true if the given button (starting at 0) was released this step.
//  (NOTE: if joy_update is called more than once per step this can fail)

if(global.dip_exists == 1)
{
return external_call(global.ljoyReleased, argument0, argument1);
}

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
