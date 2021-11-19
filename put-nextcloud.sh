#!/bin/sh

. "settings.cfg"

#curl=$(curl -s -u "$user:$pw" "https://nc.systeme.guru/remote.php/dav/files/$user/$folder/" -T "./$folder/")
#echo $curl

#DATA=$(find drive -type f -exec $curl)

find drive -type f -exec curl -s -u "$user:$pw" "https://nc.systeme.guru/remote.php/dav/files/$user/$folder/" -T '{}' ';'

#echo $DATA

exit $?
