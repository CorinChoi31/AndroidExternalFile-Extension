# AndroidExternalFile-Extension

Android External File Control Extension for Gamemaker Studio 2

Korean Documentation: https://corin-choi.tistory.com/entry/Android-SAF-External-File-Control-Extension-Korean-Documentation

English Documentation (Papago Translate): https://papago.naver.net/website?locale=ko&source=ko&target=en&url=https%3A%2F%2Fcorin-choi.tistory.com%2Fentry%2FAndroid-SAF-External-File-Control-Extension-Korean-Documentation

-----

## Announce

- 2023.02.25. Permission grant doesn't work successfully on API 33. Please don't use demo's permissions as default.  
- 2024.05.06. 
 - Update permission grant method.
 - Added code to interact with the "test.png", "test.ogg", and "test.txt" files in the SAF folder. Check the OBJ_System.StepEvent and OBJ_System.DrawEvent codes.
 - Added code to request permissions differently depending on Android version. Check the OBJ_PermissionRequrester.CreateEvent code.
