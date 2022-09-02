/// instance_nearest_dir_x(x, y, obj, dir) 
 // Find the nearest instance in the given direction.
 
 // Variables:
    var _x, _y, _obj, _dir;
    _x      = argument0;
    _y      = argument1;
    _obj    = argument2;
    _dir    = argument3;
    
 // Find instance:
    repeat(instance_number(_obj))
    {
        var _ins, _insx;
        _ins = instance_nth_nearest(_x, _y, _obj, 1);
        
        if(!_ins)
        {
           break;
        }
        
        _insx = _ins.x;
        
        switch(_dir)
        {
            case ">":
            {
                if (_insx > _x) { return _ins; }
                break;
            }
            case "<":
            {
                if (_insx < _x) { return _ins; }
                break;
            }
            case ">=":
            {
                if (_insx >= _x) { return _ins; }
                break;
            }
            case "<=":
            {
                if (_insx <= _x) { return _ins; }
                break;
            }
        }
    }

 // No instance were found or fit the given parameters.
    return noone;
