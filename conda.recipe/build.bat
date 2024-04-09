@REM "./fiji/ImageJ-win64.exe" --update add-update-site MoBIE https://sites.imagej.net/MoBIE/
@REM "./fiji/ImageJ-win64.exe" --update update-force-pristine
cp -r fiji/* %PREFIX%
@REM TODO: add more update sites by calling the updater
@REM TODO: remove platform-specific files when building for each platform?
