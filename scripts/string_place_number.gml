/// string_place_number(string, places, number)
 // Places a Number in places.
  
    var _string, _place;
    _string = string(argument0);
    _place  = argument1-string_length(_string);
        
    while(_place)
    {
          _string  = string(argument2) + _string;
          _place  -= 1;
    }

    return _string;

