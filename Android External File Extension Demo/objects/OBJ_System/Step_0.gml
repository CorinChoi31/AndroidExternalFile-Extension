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
            if(saf_file_exists("/", "test.png")) {
                test_sprite := sprite_add(global.__storage_external + "/test.png", 1, false, false, 0, 0);
            }
            if(saf_file_exists("/", "test.ogg")) {
                if(test_audio == undefined) {
                    test_audio = audio_create_stream(global.__storage_external + "/test.ogg");
                    if(test_audio != undefined) {
                        test_audio_id = audio_play_sound(test_audio, 0, false, 0.5);
                    }
                }
            }
            if(saf_file_exists("/", "test.txt")) {
                if(test_text == -1) {
                    test_text = saf_file_text_open_read("/", "test.txt");
                    if(test_text != -1) {
                        while(!saf_file_text_eoln(test_text)) {
                            var content = saf_file_text_readln(test_text);
                            if(content != undefined) {
                                test_text_content += content;
                            }
                            else {
                                break;
                            }
                        }
                        saf_file_text_close(test_text);
                        test_text = saf_file_text_open_append("/", "test.txt");
                        saf_file_text_writeln(test_text, "text test finished");
                        saf_file_text_close(test_text);
                    }
                }
            }
            
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