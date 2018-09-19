#! /bin/sh

project="unity-project"

echo "Attempting build of $project for Windows"
echo $(pwd)
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -silent-crashes \
 -logFile $(pwd)/unity.log \
 -projectPath $(pwd) \
 -buildWindowsPlayer "$(pwd)/Build/windows/$project.exe" \
 -quit
	
echo "Build logs (Windows)"
cat $(pwd)/unity.log

echo "Attempting build of $project for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -silent-crashes \
 -logFile $(pwd)/unity.log \
 -projectPath $(pwd) \
 -buildOSXUniversalPlayer "$(pwd)/Build/osx/$project.app" \
 -quit

 echo "Build logs (OSX)"
 cat $(pwd)/unity.log

echo "Attempting to build $project for WebGL"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
 -batchmode \
 -nographics \
 -silent-crashes \
 -logFile $(pwd)/unity.log\
 -projectPath $(pwd)/ \
 -buildWebGLPlayer "$(pwd)/Build/webgl/$project.html" \
 # -executeMethod BuildScript.WebGL \
 -quit \

 
 echo "Build logs (webgl)"
 cat $(pwd)/unity.log
