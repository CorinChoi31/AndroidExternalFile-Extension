if(permission_request == -1)
{
	var _i = 0; var _granted = true;
	repeat(permission_request_size)
	{
		permission_granted[_i] = os_check_permission(permission_prefix + permission_list[_i]);
		_granted = _granted and permission_granted[_i];
		
		_i += 1;
	}
	
	if(!_granted)
	{
		permission_request = 0; //<-- If is here 1, auto start "permission request window".
		permission_requested = false;
	}
	else
	{
		permission_request = 2;
		permission_requested = true;
	}
}

if(!permission_requested and permission_request == 1)
{
	if(!permission_wait[0])
	{
		if(!permission_granted[permission_request_index])
		{
			permission_wait[0] = true;
			
			os_request_permission(permission_prefix + permission_list[permission_request_index]);
		}
	}
	else
	{
		if(permission_wait[1] <= 0)
		{
			permission_wait[0] = false;
			
			var _i = 0; var _granted = true;
			repeat(permission_request_size)
			{
				permission_granted[_i] = os_check_permission(permission_prefix + permission_list[_i]);
				_granted = (_granted and permission_granted[_i]);
		
				_i += 1;
			}
			if(_granted)
			{
				permission_request = 2;
				permission_requested = true;
			}
		}
		permission_wait[1] -= 1/room_speed; //--> using delta time of 1 frame
	}
}
/*
	If player starts permission request, it continuosly shows permission request window.
	If player deny any permission, then permission request stops.
	
	--> Check 'Async - System' Event
	
	If player accepts all of permission, then you can request SAF Location.
*/

if(!permission_requested)
{
	if(mouse_check_button_released(mb_left))
	{
		if(point_in_rectangle(mouse_x, mouse_y, room_width/8, room_height/32*2, room_width/8*7, room_height/32*4))
		{
			if(permission_denied < 2)
			{
				if(permission_request == 0)
				{
					permission_request = 1;
				}
			}
			else
			{
				intent_open_setting("Please Accept Permission on App Setting.");
				
				// --> Check 'Async - Social' Event
			}
		}
	}
}
else
{
	intent_saf_request(SAF_REQUEST_LOAD);
	// --> Check 'Async - Social' (OBJ_System) Event
	
	global.__permission = true;
	instance_destroy();
}