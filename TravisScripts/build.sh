#! /bin/sh

project="unity-project"

echo "Attempting build of $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -silent-crashes \
 -logFile C:/Users/janov/Desktop/VRGW308/UnityDemo/unity.log \
 -projectPath C:\Users\janov\Desktop\VRGW308\UnityDemo \
 -buildWindowsPlayer "C:/Users/janov/Desktop/VRGW308/UnityDemo/Build/windows/$project.exe" \
 -quit
	
echo "Build logs (Windows)"
cat $(pwd)/unity.log

echo "Attempting build of $project for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -silent-crashes \
 -logFile C:/Users/janov/Desktop/VRGW308/UnityDemo/unity.log \
 -projectPath C:/Users/janov/Desktop/VRGW308/UnityDemo/ \
 -buildOSXUniversalPlayer "C:/Users/janov/Desktop/VRGW308/UnityDemo/Build/osx/$project.app" \
 -quit

 echo "Build logs (OSX)"
 cat C:\Users\janov\Desktop\VRGW308\UnityDemo/unity.log

echo "Attempting to build $project for WebGL"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -silent-crashes \
 -logFile C:/Users/janov/Desktop/VRGW308/UnityDemo/unity.log\
 -projectPath C:/Users/janov/Desktop/VRGW308/UnityDemo/ \
 -buildWebGLPlayer "C:/Users/janov/Desktop/VRGW308/UnityDemo/Build/webgl/$project.html" \
 # -executeMethod BuildScript.WebGL \
 -quit \

 
 echo "Build logs (webgl)"
 cat $(pwd)/unity.log
