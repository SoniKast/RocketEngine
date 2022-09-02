// joy_hat_y(id, hat)  [or joy_hat_y(id) for hat 0]
//Returns the hat's vertical position as -1 (up), 0 (center) or 1 (down).

if(global.dip_exists == 1)
{
return external_call(global.ljoyHatY, argument[0], 0);
}

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
