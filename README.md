# Autostart looping video playback for raspberry pi

This is a simple autostart and AV playback, intended to be use with raspberry pi.

1. Rename video to be looped to **LoopVideo.mp4**.
2. Add the user name on the `AutoStartVLC.sh` script and on the `videoplayback.service`.
3. Run `setup.sh` and wait for the process to be completed.
4. Move or copy the video to be looped to the path `~/Documents/AutoStartVideo`.
5. Setup pulse audio (the setup is on the next section of the README.md)
6. Run `sudo loginctl enable-linger <USER_NAME>` to make the service autostart without login from the user.
7. After the service is in the right place, run `systemctl --user daemon-reload`.
8. Run `systemctl --user enable videoplayback.service` to make it run on boot.
9. Run `sudo Reboot` and wait for playback to start.

# Setting up Pulse Audio

We are using pulse audio as the audio driver of choice due to the HDMI output on the raspberry pi and the easy setup and control.

1. Run command `pactl list sinks` this would return a list of hardware devices.
2. Then setup the default audio device by running `pactl set-default-sink <NAME_OF_THE_SINK>` the name of the sink is on the list of sinks from `pactl list sinks`. 
3. Then run `sudo reboot` and that would be all the necessary setup.
