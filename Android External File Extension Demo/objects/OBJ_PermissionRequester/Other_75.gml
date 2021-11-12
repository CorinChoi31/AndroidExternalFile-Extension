switch(async_load[? "type"])
{
	default:
		break;
		
	case "permission_request_result":
		if(async_load[? permission_prefix + permission_list[permission_request_index]] == os_permission_granted)
		{
			permission_granted[permission_request_index] = true;
			permission_request_index = (permission_request_index + 1)%permission_request_size;
		}
		else
		{
			permission_granted[permission_request_index] = false;
			permission_request = 0;
			
			permission_denied += 1;
		}
		
		permission_wait[1] = permission_wait[2]; //<-- wait some seconds.
		/*
			The Gamemaker Engine needs frame refresh time on Android App.
		*/
		break;
}