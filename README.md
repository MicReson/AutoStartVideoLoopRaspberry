# Autostart looping video playback for raspberry pi

This is a simple autostart and AV playback, intended to be use with raspberry pi.

1. Rename video to be looped to **LoopVideo.mp4**.
2. Add the user name on the `AutoStartVLC.sh` script and on the `VideoPlayback.service`.
3. Run `setup.sh` and wait for the process to be completed.
4. Move or copy the video to be looped to the path `~/Documents/AutoStartVideo`.
5. Make sure pulse audio has a default audio output device, most of the times is sink#2 but you need to make the change permanent.
6. The run `sudo loginctl enable-linger <USER_NAME>` to make the service autostart without login from the user.
7. Then after the service is in the right place, run `systemctl --user daemon-reload`.
8. Then run `systemctl --user enable videoplayback.service` to make it run on boot.
9. Run `sudo Reboot` and wait for playback to start.
