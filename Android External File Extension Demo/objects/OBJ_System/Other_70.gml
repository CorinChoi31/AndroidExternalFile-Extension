switch(async_load[? "type"])
{
	default:
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