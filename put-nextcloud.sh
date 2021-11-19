#!/bin/sh

. ./settings.cfg

find "$folder" -type f -exec curl -s -u "$user:$pw" "$remote_php/dav/files/$user/$folder/" -T '{}' ';'

exit $?
