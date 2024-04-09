"./fiji/ImageJ-win64.exe" --update add-update-site MoBIE https://sites.imagej.net/MoBIE/
"./fiji/ImageJ-win64.exe" --update update-force-pristine
@REM Required to avoid '[ERROR] Could not delete ...'
"./fiji/ImageJ-win64.exe" --update update
cp -r fiji/* %PREFIX%
@REM TODO: add more update sites by calling the updater
@REM TODO: remove platform-specific files when building for each platform?
