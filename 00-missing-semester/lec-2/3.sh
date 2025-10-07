 #!/usr/bin/env bash

inx=1

while true; do
   bash fail.sh &>./3.log
   if [[ $? -ne 0 ]]; then
      echo "it fails at $inx run"
      break
   fi
   inx=$((inx + 1))
done
