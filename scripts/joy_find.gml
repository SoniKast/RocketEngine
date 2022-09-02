// joy_find()
//Call this to refresh the list of known joysticks.  Returns how many it finds.

//Joysticks may change order when this occurs, if new ones have been plugged in.
//Best for use in options dialogs or between segments of play.

return external_call(global.ljoyFind);
