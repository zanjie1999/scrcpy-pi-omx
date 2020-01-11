# scrcpy-pi-omx
Android screemirror with scrcpy and omxplayer on RPi 

by default scrcpy works in RPi but cpu always clocks at >90% and temp around ~70°C

with this script get scrcpy working with hardware acceleration on most popular raspberry pi computer. (btw no controls)

## How to :
```
sudo wget https://github.com/zanjie1999/scrcpy-pi-omx/raw/master/startscreen.sh -O /usr/local/bin/scrcpy-omx
sudo chmod +x /usr/local/bin/scrcpy-omx
scrcpy-omx
```


or


1. compile and install scrcpy https://github.com/Genymobile/scrcpy/blob/master/BUILD.md
2. download startscreen.sh
3. run 
```bash
sudo chmod +x startscreen.sh
```
4. execute the script startscreen.sh
```bash
./startscreen.sh
```

## i'm putting it here so that someone will find it useful

credits/references
1. https://github.com/Genymobile/scrcpy
2. https://github.com/palazzoni/scrcpyomx
