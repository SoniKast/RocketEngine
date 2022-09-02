// joy_balls(id)
//Returns the number of trackballs on the joystick.
//Understandably, this will be zero for all but the obscurest of players.

return external_call(global.ljoyBalls, argument0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
