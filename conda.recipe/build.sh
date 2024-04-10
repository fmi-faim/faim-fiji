./fiji/ImageJ-linux64 --update add-update-site MoBIE https://sites.imagej.net/MoBIE/
./fiji/ImageJ-linux64 --update update-force-pristine
# cp -r fiji/* $PREFIX
rsync -a --exclude win64 --exclude win32 --exclude macosx --exclude *jruby* --exclude *scala* --exclude *renjin* --exclude *jython* --exclude *grpc* fiji/* $PREFIX
# TODO: add more update sites by calling the updater
# TODO: remove platform-specific files when building for each platform?
