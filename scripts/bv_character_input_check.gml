/// bv_character_input_check()
 // Check for input.
 
 // Default:
    if(global.dip_exists == 1)
    {
    
       // Key held.   
          input_up               = (keyboard_check(global.ip_up)       || ((joystick_ypos(0) <= -global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_y(0) = -1));
          input_down             = (keyboard_check(global.ip_down)     || ((joystick_ypos(0) >=  global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_y(0) =  1));
          input_right            = (keyboard_check(global.ip_right)    || ((joystick_xpos(0) >=  global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_x(0) =  1));
          input_left             = (keyboard_check(global.ip_left)     || ((joystick_xpos(0) <= -global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_x(0) = -1));
          input_action           = (keyboard_check(global.ip_button_a) || (joy_button(0, global.dip_button_a) ==  1));
          input_special          = (keyboard_check(global.ip_button_b) || (joy_button(0, global.dip_button_b) ==  1));
    
       // Key press.
          input_up_pressed       = keyboard_check_pressed(global.ip_up);
          input_down_pressed     = keyboard_check_pressed(global.ip_down);
          input_right_pressed    = keyboard_check_pressed(global.ip_right);
          input_left_pressed     = keyboard_check_pressed(global.ip_left);
          input_action_pressed   = keyboard_check_pressed(global.ip_button_a) || joy_pressed(0, global.dip_button_a);
          input_special_pressed  = keyboard_check_pressed(global.ip_button_b) || joy_pressed(0, global.dip_button_b);    

       // Key release.    
          input_up_released      = (keyboard_check_released(global.ip_up)       || ((joystick_ypos(0) > -global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_y(0) != -1));
          input_down_released    = (keyboard_check_released(global.ip_down)     || ((joystick_ypos(0) <  global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_y(0) !=  1));
          input_right_released   = (keyboard_check_released(global.ip_right)    || ((joystick_xpos(0) <  global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_x(0) !=  1));
          input_left_released    = (keyboard_check_released(global.ip_left)     || ((joystick_xpos(0) > -global.setting_input_gamepad_deadzone) && global.setting_input_gamepad_deadzone != 0) || (joy_hat_x(0) != -1));
          input_action_released  = (keyboard_check_released(global.ip_button_a) || (joy_released(0, global.dip_button_a)));
          input_special_released = (keyboard_check_released(global.ip_button_b) || (joy_released(0, global.dip_button_b)));        
    
    } 
    else // No joystick exists, get rid of the joystick checks to prevent slowdown.
    {
    
       // Key held.   
          input_up               = (keyboard_check(global.ip_up)       );
          input_down             = (keyboard_check(global.ip_down)     );
          input_right            = (keyboard_check(global.ip_right)    );
          input_left             = (keyboard_check(global.ip_left)     );
          input_action           = (keyboard_check(global.ip_button_a) );
          input_special          = (keyboard_check(global.ip_button_b) );
    
       // Key press.
          input_up_pressed       = keyboard_check_pressed(global.ip_up);
          input_down_pressed     = keyboard_check_pressed(global.ip_down);
          input_right_pressed    = keyboard_check_pressed(global.ip_right);
          input_left_pressed     = keyboard_check_pressed(global.ip_left);
          input_action_pressed   = keyboard_check_pressed(global.ip_button_a);
          input_special_pressed  = keyboard_check_pressed(global.ip_button_b);    

       // Key release.    
          input_up_released      = (keyboard_check_released(global.ip_up)       );
          input_down_released    = (keyboard_check_released(global.ip_down)     );
          input_right_released   = (keyboard_check_released(global.ip_right)    );
          input_left_released    = (keyboard_check_released(global.ip_left)     );
          input_action_released  = (keyboard_check_released(global.ip_button_a) );
          input_special_released = (keyboard_check_released(global.ip_button_b) );        
    
    }  
