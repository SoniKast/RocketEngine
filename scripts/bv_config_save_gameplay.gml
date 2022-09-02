/// bv_config_save_gameplay()
 // Save the configuration file for the Input.

    _file = file_text_open_write(working_directory+"\Engine\Config\Gameplay.hzc");
            file_text_write_real(_file, global.setting_gameplay_spindash);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_gameplay_dropdash);  
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_gameplay_peelout);
            file_text_writeln(_file);   
            file_text_write_real(_file, global.setting_gameplay_aerial_lock);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_gameplay_roll_trigger);  
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_gameplay_camera_lag);
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_gameplay_rotation);                 
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_gameplay_time_over);                                                                                                
            file_text_close(_file);

