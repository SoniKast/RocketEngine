/// bv_text_readline()
 // Opens a text document, reads the given line in argument2 and returns it.
 
 if(file_exists(argument0))
 {
    _file = file_text_open_read(argument0);
            if(argument1 == true)
            {
               if(argument2 == 0)
               {
                  _line = file_text_read_string(_file);
               }
               else
               {
                  for(i=0; i<argument2; i+=1)
                  {
                      file_text_readln(_file);
                  }
                  _line = file_text_read_string(_file);
               }
            }
            if(argument1 == false)
            {
               if(argument2 == 0)
               {
                  _line = file_text_read_real(_file);
               }
               else
               {
                  for(i=0; i<argument2; i+=1)
                  {
                      file_text_readln(_file);
                  }
                  _line = file_text_read_real(_file);
               }
            }          
            file_text_close(_file);
            return _line;  
 }
