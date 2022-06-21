{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "1.1.2",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2021-07-14T20:54:46.823564+09:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"AndroidExternalFile.ext","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"externalName":"intent_saf_request","kind":4,"help":"intent_saf_request(request_code)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"intent_saf_request","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_create_text","kind":4,"help":"saf_file_create_text(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_create_text","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_directory_creates","kind":4,"help":"saf_directory_creates(path)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"saf_directory_creates","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_directory_exists","kind":4,"help":"saf_directory_exists(path)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"saf_directory_exists","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_directory_remove","kind":4,"help":"saf_directory_remove(path)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"saf_directory_remove","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_directory_get_contents","kind":4,"help":"saf_directory_get_contents(path)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"saf_directory_get_contents","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"directory_get_external_files","kind":4,"help":"directory_get_external_files()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"directory_get_external_files","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"directory_get_external_cache","kind":4,"help":"directory_get_external_cache()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"directory_get_external_cache","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_exists","kind":4,"help":"saf_file_exists(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_exists","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"directory_get_contents","kind":4,"help":"directory_get_contents(path)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"directory_get_contents","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_remove","kind":4,"help":"saf_file_remove(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_remove","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_directory_rename","kind":4,"help":"saf_directory_rename(path, rename)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_directory_rename","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_rename","kind":4,"help":"saf_file_rename(path, name, rename)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_rename","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"file_get_size","kind":4,"help":"file_get_size(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"file_get_size","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"intent_open_setting","kind":4,"help":"intent_open_setting(msg)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"intent_open_setting","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_open_read","kind":4,"help":"saf_file_text_open_read(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_text_open_read","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_open_write","kind":4,"help":"saf_file_text_open_write(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_text_open_write","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_open_append","kind":4,"help":"saf_file_text_open_append(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_text_open_append","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_read_real","kind":4,"help":"saf_file_text_read_real(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_read_real","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_read_string","kind":4,"help":"saf_file_text_read_string(file)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_read_string","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_readln","kind":4,"help":"saf_file_text_readln(file)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_readln","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_write_real","kind":4,"help":"saf_file_text_write_real(file, real)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_write_real","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_write_string","kind":4,"help":"saf_file_text_write_string(file, string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_text_write_string","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_writeln","kind":4,"help":"saf_file_text_writeln(file, string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_text_writeln","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_eoln","kind":4,"help":"saf_file_text_eoln(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_eoln","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_eof","kind":4,"help":"saf_file_text_eof(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_eof","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_text_close","kind":4,"help":"saf_file_text_close(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_text_close","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_open_read","kind":4,"help":"saf_file_bin_open_read(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_bin_open_read","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_open_write","kind":4,"help":"saf_file_bin_open_write(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_bin_open_write","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_open_append","kind":4,"help":"saf_file_bin_open_append(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_bin_open_append","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_rewrite","kind":4,"help":"saf_file_bin_rewrite(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_bin_rewrite","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_write_byte","kind":4,"help":"saf_file_bin_write_byte(file, byte)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"saf_file_bin_write_byte","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_read_byte","kind":4,"help":"saf_file_bin_read_byte(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_bin_read_byte","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_bin_close","kind":4,"help":"saf_file_bin_close(file)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"saf_file_bin_close","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_create_bin","kind":4,"help":"saf_file_create_bin(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_create_bin","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_copy","kind":4,"help":"saf_file_copy(src_path, src_name, dst_path, dst_name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_copy","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"send_double","kind":4,"help":"send_double(path)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"send_double","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"send_social_log","kind":4,"help":"send_social_log(msg)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"send_social_log","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_directory_create","kind":4,"help":"saf_directory_create(path, name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_directory_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_create","kind":4,"help":"saf_file_create(path, name, mimtype)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_move","kind":4,"help":"saf_file_move(src_path, src_name, dst_path, dst_name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_move","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_copy_from_file","kind":4,"help":"saf_file_copy_from_file(file_src_path, file_src_name, saf_dst_path, saf_dst_name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_copy_from_file","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"directory_get_saf_root","kind":4,"help":"directory_get_saf_root()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"directory_get_saf_root","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"file_apply_name(path, name)","kind":4,"help":"file_apply_name(path, name)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"file_apply_name","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"saf_file_copy_to_file","kind":4,"help":"saf_file_copy_to_file(src_path, src_name, dst_path, dst_name)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"saf_file_copy_to_file","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"31","hidden":false,"resourceVersion":"1.0","name":"SAF_REQUEST_SEARCH","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"32","hidden":false,"resourceVersion":"1.0","name":"SAF_REQUEST_LOAD","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":8,"order":[
        {"name":"intent_saf_request","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"intent_open_setting","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"directory_get_external_files","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"directory_get_external_cache","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"directory_get_saf_root","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"directory_get_contents","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"file_get_size","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"file_apply_name","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_directory_create","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_directory_creates","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_directory_exists","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_directory_rename","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_directory_remove","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_directory_get_contents","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_create_text","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_create_bin","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_create","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_exists","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_rename","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_remove","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_move","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_copy","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_copy_from_file","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_copy_to_file","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_open_read","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_open_write","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_open_append","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_read_real","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_read_string","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_readln","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_write_real","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_write_string","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_writeln","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_eoln","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_eof","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_text_close","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_open_read","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_open_write","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_open_append","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_rewrite","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_write_byte","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_read_byte","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"saf_file_bin_close","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"send_double","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"send_social_log","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"AndroidExternalFile.gml","origname":"","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"integrated_file_copy","kind":2,"help":"integrated_file_copy(src_path, src_name, dst_path, dst_name, src_type, dst_type)","hidden":false,"returnType":2,"argCount":4,"args":[
            1,
            1,
            1,
            1,
            2,
            2,
          ],"resourceVersion":"1.0","name":"integrated_file_copy","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"integrated_file_path","kind":2,"help":"integrated_file_path(path, name, type)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            2,
          ],"resourceVersion":"1.0","name":"integrated_file_path","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"0","hidden":false,"resourceVersion":"1.0","name":"IS_FILE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"IS_SAF","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":3035461389054378222,"order":[
        {"name":"integrated_file_path","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
        {"name":"integrated_file_copy","path":"extensions/AndroidExternalFile/AndroidExternalFile.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "ExternalFile",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "\r\ncompile 'com.google.code.gson:gson:2.8.5'\r\nimplementation 'androidx.documentfile:documentfile:1.0.1'\r\n",
  "androidcodeinjection": "<YYAndroidGradleDependencies>\r\ncompile 'com.google.code.gson:gson:2.8.5'\r\nimplementation 'androidx.documentfile:documentfile:1.0.1'\r\n</YYAndroidGradleDependencies>\r\n",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [
    "android.permission.READ_EXTERNAL_STORAGE",
    "android.permission.WRITE_EXTERNAL_STORAGE",
  ],
  "copyToTargets": 8,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "AndroidExternalFile",
  "tags": [],
  "resourceType": "GMExtension",
}