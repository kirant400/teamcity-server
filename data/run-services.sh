#!/bin/bash

echo '/run-services.sh'
if [ `id -u` -ge 10000 ]; then
 cat /etc/passwd | sed -e "s/^tcuser:/builder:/" &gt; /tmp/passwd
 echo "tcuser:x:`id -u`:`id -g`:,,,:/home/tcuser:/bin/bash" &gt;&gt; /tmp/passwd
 cat /tmp/passwd &gt; /etc/passwd
 rm /tmp/passwd
fi
for entry in /services/*.sh
do
  if [[ -f "$entry" ]]; then
    echo "$entry"
    [[ ! -x "$entry" ]] && (chmod +x "$entry"; sync)
    "$entry"
  fi
done

echo '/run-server.sh'
exec '/run-server.sh'
