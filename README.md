# Autostart looping video playback for raspberry pi

This is a simple autostart and AV playback, intended to be use with raspberry pi.

1. Rename video to be looped to **LoopVideo.mp4**.
2. Add the user name on the `AutoStartVLC.sh` script and on the `VideoPlayback.service`.
3. Run `setup.sh` and wait for the process to be completed.
4. Move or copy the video to be looped to the path `~/Documents/AutoStartVideo`.
5. Make sure pulse audio has a default audio output device, most of the times is sink#2 but you need to make the change permanent.
6. Then after the service is in the right place, run `sudo systemctl --user daemon-reload`.
7. Then run `sudo systemctl --user enable VidePlayback.service` to make it run on boot.
8. Run `sudo Reboot` and wait for playback to start.
