./fiji/Contents/MacOS/ImageJ-macosx --update add-update-site MoBIE https://sites.imagej.net/MoBIE/
./fiji/Contents/MacOS/ImageJ-macosx --update update-force-pristine
cp -r fiji/* $PREFIX
# TODO: add more update sites by calling the updater
# TODO: remove platform-specific files when building for each platform?
