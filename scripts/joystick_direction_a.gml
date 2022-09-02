// joystick_direction(id)
//Just like the GM function, returns a numpad keycode corresponding to
//    the direction of the joystick's X and Y axes.

//(I had to guess how Game Maker does this, so there's a subtle difference...)
var jx, jy, res;
jx = joy_x(joy_gmid(argument0));
jy = joy_y(joy_gmid(argument0));
res = vk_numpad1;
if (jy < -.4) {res += 6;}
else if (jy < .4) {res += 3;}
if (jx > .4) {res += 2;}
else if (jx > -.4) {res += 1;}
return res;
