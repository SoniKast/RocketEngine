// joy_list()
//Refreshes the list of joysticks and details them in a popup box.
//Useful for testing.

joy_find();
var count, info;
count = joy_count();
info = joy_hi() + "#";
info += "Joysticks: " + string(count) + "#";
var i;
for (i = -1; i < 5; i += 1)
{
    info += string(i) + " -> " + joy_name(i) + "#";
}
show_message(info);
