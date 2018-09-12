#! /bin/sh

project="Unity project"

## Make the builds
# Recall from install.sh that a separate module was needed for Windows build support
echo "Attempting build of $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile $(pwd)/unity.log \
	-projectPath $(pwd) \
	-buildWindowsPlayer "$(pwd)/Build/windows/$project.exe" \
	-quit

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
