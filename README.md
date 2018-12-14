# h264-erode
Thought LAME was cool? Take a look at h.264!

## Just add FFMPEG
It's pretty simple to use, because I made it to simply automate the process of continuously re-encoding a video.

This uses `hqdn3d` noise reduction filter to degrade the quality further, similar to how YouTube does it. The less noise, the smaller the video could be. The profile is taken straight from HandBrake.

## How to use
1. Name any valid mp4 file (name without space)(number).mp4 (e.g. `vid0.mp4`)
2. Put it in the same folder with the batch script
3. Open the batch script
4. Type in the filename (e.g. `vid`)
5. Type in the number you put on the source file's name (example: `vid0` = type in zero)

Tip: you can use this to continue an interrupted erosion process or multi-step erosion
6. Set the end (at least 1, omit for continuous operation)
7. Set the video bitrate (2000 is the standard for YouTube 480p)
8. Set the maximum allowed bitrate for either variable or pseudo-continuous bitrate (must be equal or higher than the video bitrate you've set)
9. Set the audio quality, based on libmp3lame quality scale, I use 5 for turning it into garbage
10. Wait until it reaches the desired count
11. Enjoy
