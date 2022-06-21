switch(async_load[? "type"])
{
	default:
		break;
	
	case "saf_request_loaded":
		/* file copy test code */
        global.__storage_external = async_load[? "path"];
        /*
            // before run these codes, create files at SAF Folder
            // test
            // test.png
            // test.ogg
            // test.g
            
            var _path = directory_get_external_files();

            show_debug_message("SAF Path: " + directory_get_saf_root());
            show_debug_message("Package Path: " + _path);
            
            show_debug_message("TEST SS");
            integrated_file_copy("", "test", "/testS", "resultSS01", IS_SAF, IS_SAF);
            integrated_file_copy("", "test", "/testS", "resultSS02.png", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.png", "/testS", "resultSS03", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.png", "/testS", "resultSS04.png", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.ogg", "/testS", "resultSS05", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.ogg", "/testS", "resultSS06.jpg", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.ogg", "/testS", "resultSS07.ogg", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.g", "/testS", "resultSS08", IS_SAF, IS_SAF);
            integrated_file_copy("", "test.g", "/testS", "resultSS09.g", IS_SAF, IS_SAF);
            
            show_debug_message("TEST SF");
            integrated_file_copy("", "test", _path, "resultSF01", IS_SAF, IS_FILE);
            integrated_file_copy("", "test", _path, "resultSF02.png", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.png", _path, "resultSF03", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.png", _path, "resultSF04.png", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.ogg", _path, "resultSF05", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.ogg", _path, "resultSF06.jpg", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.ogg", _path, "resultSF07.ogg", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.g", _path, "resultSF08", IS_SAF, IS_FILE);
            integrated_file_copy("", "test.g", _path, "resultSF09.g", IS_SAF, IS_FILE);
            
            show_debug_message("TEST FS");
            integrated_file_copy(_path, "resultSF01", "/testF", "resultFS01", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF02.png", "/testF", "resultSF02.png", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF03", "/testF", "resultSF03", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF04.png", "/testF", "resultSF04.png", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF05", "/testF", "resultSF05", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF06.jpg", "/testF", "resultSF06.jpg", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF07.ogg", "/testF", "resultSF07.ogg", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF08", "/testF", "resultSF08", IS_FILE, IS_SAF);
            integrated_file_copy(_path, "resultSF09.g", "/testF", "resultSF09.g", IS_FILE, IS_SAF);
            
            show_debug_message("TEST FF");
            integrated_file_copy(_path, "resultSF01", _path + "/testF", "resultFF01", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF02.png", _path + "/testF", "resultFF02.png", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF03", _path + "/testF", "resultFF03", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF04.png", _path + "/testF", "resultFF04.png", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF05", _path + "/testF", "resultFF05", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF06.jpg", _path + "/testF", "resultFF06.jpg", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF07.ogg", _path + "/testF", "resultFF07.ogg", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF08", _path + "/testF", "resultFF08", IS_FILE, IS_FILE);
            integrated_file_copy(_path, "resultSF09.g", _path + "/testF", "resultFF09.g", IS_FILE, IS_FILE);
        */
        /*
            integrated_file_copy("", "test sprite.png", _path, "test sprite A", IS_SAF, IS_FILE); //from SAF File Space to App External File
            integrated_file_copy(_path, "test sprite A", "", "test sprite B", IS_FILE, IS_SAF); //from External File to SAF
            integrated_file_copy("", "test sprite B", "/test folder B", "test sprite C", IS_SAF, IS_SAF); //from SAF to SAF
            
            saf_file_move("", "test sprite", "/test", "test sprite"); //SAF to SAF
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