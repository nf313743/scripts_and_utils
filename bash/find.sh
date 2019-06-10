find . -type f | wc -l

find ./ -iname "*.ogg" -type f -exec /bin/mv {} /home/nathan/ogg \;