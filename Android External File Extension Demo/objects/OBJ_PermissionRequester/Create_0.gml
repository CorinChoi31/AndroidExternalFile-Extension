/*  
    Please Manually Update AndroidManifest.xml File
    
    1. Open your explorer, and move to
        %programdata%\GameMakerStudio2\Cache\runtimes\<your-runtime-version>\android\runner\ProjectFiles\src\main\
        
    2. Open AndroidManifest.xml file.
    
    3. Add Permission Under ${YYAndroidManifestPermission}.
    
    ----- AndroidManifest.xml ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
    Line 06  : ${YYAndroidManifestPermission}
    Line 07 +: <uses-permission android:name="android.permission.READ_MEDIA_IMAGES"/>
    Line 08 +: <uses-permission android:name="android.permission.READ_MEDIA_AUDIO"/>
    Line 09 +: <uses-permission android:name="android.permission.READ_MEDIA_VIDEO"/>
    
*/
permission_prefix = "android.permission."
permission_list = ["READ_MEDIA_IMAGES", "READ_MEDIA_VIDEO", "READ_MEDIA_AUDIO"];
if(os_version <= 32) {
    permission_list = ["READ_EXTERNAL_STORAGE", "WRITE_EXTERNAL_STORAGE"];
}


permission_request = -1;
/*
    -1     = first app start
     0     = waiting player's input
     1     = player starts "permission request window"
     2     = permission granted
*/
permission_wait = [false, 0, 1]; //<-- [waiting, current waiting time (seconds), wait time]
permission_request_index = 0;
permission_request_size = array_length(permission_list);
permission_granted = array_create(permission_request_size, false); //size will same as permission list
permission_denied = 0; //<-- denied time
/*
    if denied time same as(or more) 2, "permission request window" will not show.
    (over API Level 21)
    
    = 'os_permission_denied_dont_request' on 'os_check_permission' function.
*/

permission_requested = false;