@echo off
echo Advanced MP4 Degrader
echo 2016 Blackwood, Modded for videos by Torbjorn 2018
echo Warning: You need to put in numbers and filename.
echo.

set /a frames=30
:: Menu
set /p fname=Please type in your filename: 
set /p countin=Set starting position (Type 0 to start over): 
set /p stopcount=Stop after nth file: (Type desired range, minimum 1): 
set /p bitrate=Set the bitrate (Kbps): 
set /p maxrate=Set the maximum bitrate (Kbps): 
::set /p frames=Set the FPS (default: 30): 
set /p abit=Set audio quality (0~9, 0 is highest): 
set /a countout=%countin%+1

:: Loop section
:start

:: Convert
ffmpeg -i %fname%%countin%.mp4 -threads 0 -c:v libx264 -b:v %bitrate%K -maxrate %maxrate%K -bufsize 1M -crf 25 -maxrate %maxrate%K -preset ultrafast -tune zerolatency -filter:v hqdn3d=3:2:2:3 -c:a libmp3lame -q:a %abit% %fname%%countout%.mp4

:: Increase parameters by 1
set /a countin=%countin%+1
set /a countout=%countout%+1

:: Check if designated file exists
if exist %fname%%stopcount%.mp4 (goto stop) else goto start

:: Things to do after it's finished
:stop
echo.
echo MP4 erosion complete, enjoy your insanity.
echo Press any key to exit.
pause >nul
