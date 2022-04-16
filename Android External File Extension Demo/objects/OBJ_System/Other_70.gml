switch(async_load[? "type"])
{
	default:
		break;
	
	case "saf_request_loaded":
		/* file copy test code */
		/*
			var _path = directory_get_external_files();
			
			show_debug_message("SAF Path: " + directory_get_saf_root());
			show_debug_message("Package Path: " + _path);
			
			integrated_file_copy("/", "test sprite.png", _path, "test sprite A.png", IS_SAF, IS_FILE); //from SAF File Space to App External File
			integrated_file_copy(_path, "test sprite A.png", "/", "test sprite B.png", IS_FILE, IS_SAF); //from External File to SAF
			integrated_file_copy("/", "test sprite B.png", "/test folder B", "test sprite C.png", IS_SAF, IS_SAF); //from SAF to SAF
			
			saf_file_move("/", "test sprite.png", "/test", "test sprite.png"); //SAF to SAF
		*/
		
		/* drawing sprite, playing audio and open text file */
		/*
			test_sprite = sprite_add(directory_get_saf_root() + "/" + "test sprite.png", 1, false, 0, 0, 0);
			
			var _test_audio = audio_create_stream(directory_get_saf_root() + "/" + "test audio.ogg")
			test_audio = audio_play_sound(_test_audio, 0, false);
			
			test_textfile = saf_file_text_open_read("/", "test text.txt");
			if(test_textfile != -1)
			{
				show_debug_message(saf_file_text_readln(test_textfile));
				saf_file_text_close(test_textfile);
			}
			
			test_textfile = saf_file_text_open_write("/test folder A", "test text.txt");
			if(test_textfile != -1)
			{
				saf_file_text_writeln(test_textfile, "test finished");
				saf_file_text_close(test_textfile);
			}
		*/
		break;
	case "saf_request_accepted":
		global.__storage_external = async_load[? "path"];
		
		if(global.__storage_external != "")
		{
			if(file_list != undefined && ds_exists(file_list, ds_type_map))
			{
				ds_map_destroy(file_list);
			}
			file_list = json_decode(saf_directory_get_contents("/"));
		}
		break;
	
	case "saf_request_canceled":
		break;
	
	case "log":
		break;
}