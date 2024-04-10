"./fiji/ImageJ-win64.exe" --update add-update-site MoBIE https://sites.imagej.net/MoBIE/
"./fiji/ImageJ-win64.exe" --update update-force-pristine
@REM Required to avoid '[ERROR] Could not delete ...'
"./fiji/ImageJ-win64.exe" --update update
@REM cp -r fiji/* %PREFIX%
echo linux64 > exclude.txt
echo macosx >> exclude.txt
echo win32 >> exclude.txt
echo jruby >> exclude.txt
echo scala >> exclude.txt
echo jython >> exclude.txt
echo renjin >> exclude.txt
echo grpc >> exclude.txt

xcopy fiji\* %PREFIX% /s /exclude:exclude.txt
@REM TODO: add more update sites by calling the updater
@REM TODO: remove platform-specific files when building for each platform?
