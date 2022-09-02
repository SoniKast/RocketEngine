/// bv_config_save_audio()
 // Save the configuration file for the Audio.

    _file = file_text_open_write(working_directory+"\Engine\Config\Audio.hzc");
            file_text_write_real(_file, global.setting_music_vol);
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_sound_vol);       
            file_text_writeln(_file);
            file_text_write_real(_file, global.setting_event_vol);                                          
            file_text_close(_file);
