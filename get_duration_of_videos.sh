#!/bin/sh

# creating a directory for storing the videos temporary
mkdir -p tmp_videos && cd tmp_videos

echo "["
while read line; do
    # load the video from the server
    wget --quiet $line

    # cut the filename of the URL to use it with ffmpeg
    filename="$(echo $line | rev | cut -d / -f 1 | rev)"

    seconds="$(ffmpeg -i $filename 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,// | awk '{ split($1, A, ":"); print 3600*A[1] + 60*A[2] + A[3] }')"

    echo "'$filename' => $seconds,"
done <../videos.txt
echo "]"

cd ..

# remove the temporary video folder
rm -rf tmp_videos