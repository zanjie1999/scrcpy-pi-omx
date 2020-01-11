#!/bin/bash
adb push /usr/local/share/scrcpy/scrcpy-server /data/local/tmp/scrcpy-server.jar
adb reverse localabstract:scrcpy tcp:56100
if [ -x /tmp/streamer ]
 then
   nc -l -p 56100 > /tmp/streamer &
else
   mkfifo /tmp/streamer
   nc -l -p 56100 > /tmp/streamer &
fi
omxplayer -o hdmi --no-keys --no-osd --refresh  --advanced=0 --loop --timeout 0 --lavfdopts probesize:250000 --video_queue 1 --avdict rtsp_transport:tcp  /tmp/streamer &
sleep 2
adb shell CLASSPATH=/data/local/tmp/scrcpy-server.jar app_process / com.genymobile.scrcpy.Server 0 8000000 false - false true
killall nc
exit 0
