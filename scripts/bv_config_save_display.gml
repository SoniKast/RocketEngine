/// bv_config_save_display()
 // Save the configuration file for the Display.

    _file = file_text_open_write(working_directory+"\Engine\Config\Display.hzc");
            file_text_write_real(_file, global.setting_display_scale);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_display_fullscreen);
            file_text_writeln(_file);            
            file_text_write_real(_file, global.setting_display_vsync);
            file_text_writeln(_file);        
            file_text_write_real(_file, global.setting_display_alt_sync);                     
            file_text_close(_file);
