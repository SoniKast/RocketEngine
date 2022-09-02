// joy_init()
//Call this at least once to initialize joy.  It is safe to call again.


//Only initialize once
if (variable_global_exists("ljoyInitialized")) return 0;
global.ljoyInitialized = 1;

var dll;
dll = "joydll.dll";

//Maintenance
global.ljoyInit = external_define(dll, "joy_init", dll_cdecl, ty_real, 0);
global.ljoyQuit = external_define(dll, "joy_close", dll_cdecl, ty_real, 0);
global.ljoyFind = external_define(dll, "joy_find", dll_cdecl, ty_real, 0);
global.ljoyUpdate = external_define(dll, "joy_update", dll_cdecl, ty_real, 0);
global.ljoyHi = external_define(dll, "joy_hi", dll_cdecl, ty_string, 0);


//Joysticks' info
global.ljoyCount = external_define(dll, "joy_count", dll_cdecl, ty_real, 0);
global.ljoyName = external_define(dll, "joy_name", dll_cdecl, ty_string, 1, ty_real);


//Axes
global.ljoyAxes = external_define(dll, "joy_axes", dll_cdecl, ty_real, 1, ty_real);
global.ljoyAxis = external_define(dll, "joy_axis", dll_cdecl, ty_real, 2, ty_real, ty_real);


//Buttons
global.ljoyButtons = external_define(dll, "joy_buttons", dll_cdecl, ty_real, 1, ty_real);
global.ljoyButton = external_define(dll, "joy_button", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyPressed = external_define(dll, "joy_pressed", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyReleased = external_define(dll, "joy_released", dll_cdecl, ty_real, 2, ty_real, ty_real);


//Hats
global.ljoyHats = external_define(dll, "joy_hats", dll_cdecl, ty_real, 1, ty_real);
global.ljoyHat = external_define(dll, "joy_hat", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyHatX = external_define(dll, "joy_hat_x", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyHatY = external_define(dll, "joy_hat_y", dll_cdecl, ty_real, 2, ty_real, ty_real);


//Trackballs
global.ljoyBalls = external_define(dll, "joy_balls", dll_cdecl, ty_real, 1, ty_real);
global.ljoyBallX = external_define(dll, "joy_ball_x", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyBallY = external_define(dll, "joy_ball_y", dll_cdecl, ty_real, 2, ty_real, ty_real);



//Initialize the library
external_call(global.ljoyInit);
