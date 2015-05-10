# get_duration_of_videos
A simple bash script returning the duration of videos specified by URLs within a text file

## How to use?

Clone the repository and go to the directory:

```
git clone https://github.com/seb0zz/get_duration_of_videos.git && cd get_duration_of_videos
```

Create a videos.txt file with video URLs. The content should look like the following example:

```
http://videoserver.com/video1.mp4
http://videoserver.com/video2.mp4
```

Execute the script via:

```
./get_duration_of_videos.sh
```

The script will output text in form of a PHP array containing the filename of the video as the key and the seconds as the value (float). Example:

```
[
'video1.mp4' => 23.45,
'video2.mp4' => 9.12,
]
```
