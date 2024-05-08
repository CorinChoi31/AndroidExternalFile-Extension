//show_debug_message(async_load[? "type"]);

switch(async_load[? "type"])
{
    case "permission_checked":
        break;
    
    case "logged":
        var _log = async_load[? "content"];
        show_debug_message(_log);
        break;
        
    case "saf_request_search_directory_accepted":
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

    case "saf_request_search_directory_canceled":
        break;
        
    case "saf_request_get_directory":
        global.__storage_external = async_load[? "path"];
        break;

    case "saf_request_search_file_accepted":
        var _file = async_load[? "path"];

        var _split = string_split(_file, "/");
        var _filename = _split[array_length(_split) - 1];

        integrated_file_copy("", _file, "/", _filename, IS_FILE, IS_SAF);
        break;
    
    case "saf_request_search_file_canceled":
        break;
    
    case "saf_request_get_file":
        break;
        
    default:
        break;
}