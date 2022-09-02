// joy_hat(id, hat)  [or joy_hat(id) for hat 0]
//Works like Game Maker's POV hat function.
//Returns -1 for a centered hat or an eigth-circle direction.
//  (directions go clockwise starting with 0 as up, around to 315 as up-left)

return external_call(global.ljoyHat, argument0, 0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!
