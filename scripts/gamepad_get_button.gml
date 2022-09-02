/// gamepad_get_button();
for(i=gp_face1; i<gp_axisrv; i++)
{
    if(gamepad_button_check(0, i))
    {
        return i;
        exit;
    }
}
