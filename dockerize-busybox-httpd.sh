#!/bin/bash
set -e

dockerize -t mrperrins/rpi-bagelism-httpd \
   --add-file index.html /www/ \
   --add-file bagels.jpg /www/ \
   --entry '/bin/busybox' \
   --cmd 'httpd -f -p 80 -h /www' \
   /bin/busybox
