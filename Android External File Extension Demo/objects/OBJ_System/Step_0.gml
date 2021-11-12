if(global.__permission)
{
	if(mouse_check_button_released(mb_left))
	{
		if(point_in_rectangle(mouse_x, mouse_y, room_width/8*1, room_height/32*2, room_width/8*7, room_height/32*4))
		{
			intent_saf_request(SAF_REQUEST_SEARCH);
		}
		
		if(global.__storage_external != "")
		{
			if(point_in_rectangle(mouse_x, mouse_y, room_width/8*1, room_height/32*5, room_width/8*3, room_height/32*7))
			{
				var _str = "";
				for(var i = 0; i < random_range(1, 10); i++)
				{
					_str += chr(random_range(0, 26) + ord("a"));
				}
				saf_directory_create("/", _str);
				
				if(file_list != undefined && ds_exists(file_list, ds_type_map))
				{
					ds_map_destroy(file_list);
				}
				file_list = json_decode(saf_directory_get_contents("/"));
			}
			
			if(point_in_rectangle(mouse_x, mouse_y, room_width/16*7, room_height/32*5, room_width/16*9, room_height/32*7))
			{
				if(file_list != undefined && ds_exists(file_list, ds_type_map))
				{
					ds_map_destroy(file_list);
				}
				file_list = json_decode(saf_directory_get_contents("/"));
			}
			
			if(point_in_rectangle(mouse_x, mouse_y, room_width/8*5, room_height/32*5, room_width/8*7, room_height/32*7))
			{
				var _str = "";
				for(var i = 0; i < random_range(1, 10); i++)
				{
					_str += chr(random_range(0, 26) + ord("a"));
				}
				var _file = saf_file_text_open_write("/", _str);
				if(_file != -1)
				{
					saf_file_text_writeln(_file, _str);	
					saf_file_text_close(_file);
				}
				
				if(file_list != undefined && ds_exists(file_list, ds_type_map))
				{
					ds_map_destroy(file_list);
				}
				file_list = json_decode(saf_directory_get_contents("/"));
			}
		}
	}
}