randomize();
global.__permission = true;

global.__storage_security = string_copy(string_replace_all(working_directory, @"\", "/"), 0, string_length(working_directory) - 1);
/*
	Windows = %appdata% or %local%
	Android = /data/data/<AppPackage>
*/
global.__storage_internal = string_copy(string_replace_all(working_directory, @"\", "/"), 0, string_length(working_directory) - 1);
/*
	Windows = %appdata% or %local% -> User Document/My Games/
	Android = /storage/emulated/<userID>/Android/<AppPackage>/files
*/
global.__storage_external = string_copy(string_replace_all(working_directory, @"\", "/"), 0, string_length(working_directory) - 1);
/*
	Windows = %appdata% or %local% -> User Document/My Games/
	Android = /storage/emulated/<userID>/<userSelectedDirectory:SAF> => "/"
*/
global.__storage_cache = string_copy(string_replace_all(temp_directory, @"\", "/"), 0, string_length(temp_directory) - 1);
/*
	Windows = %local%/temp
	Android = /storage/emulated/<userID>/Android/<AppPackage>/cache
*/

switch(os_type)
{
	default:
		global.__storage_security = global.__storage_security + "/Locked";
		
		global.__storage_internal = environment_get_variable("Home");
		global.__storage_internal = string_replace_all(global.__storage_internal, @"\", "/");
		global.__storage_internal = string_copy(global.__storage_internal, 0, string_length(global.__storage_internal) - string_length("Desktop/"));
		global.__storage_internal = global.__storage_internal + "/Documents/My Games/AndroidExternalFileExtionsionDemo";
		
		global.__storage_external = environment_get_variable("Home");
		global.__storage_external = string_replace_all(global.__storage_external, @"\", "/");
		global.__storage_external = string_copy(global.__storage_external, 0, string_length(global.__storage_external) - string_length("Desktop/"));
		global.__storage_external = global.__storage_external + "/Documents/My Games/AndroidExternalFileExtionsionDemo";
		
		if(!directory_exists(global.__storage_external))
		{
			directory_create(global.__storage_external);
		}
		break;
	
	case os_android:
		global.__storage_internal = directory_get_external_files();
		global.__storage_external = "";
		global.__storage_cache = directory_get_external_cache();
		
		global.__permission = false;
		instance_create_layer(0, 0, "Instances", OBJ_PermissionRequester);
		break;
}

file_list = undefined;