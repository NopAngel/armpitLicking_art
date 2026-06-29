#! /bin/bash 
# Sets the desired thumbnail width
WIDTH=270
# Loops through all jpg files in current folder
# CHANGE TO WEBP
for i in *.jpg
do
    # Stores the width of the current file
    iwidth=`identify -format "%w" $i`
    # Checks current filename does not end with '-thumb' and
    # file is greater than desired width
    if [[ $i != *-thumb.jpg ]] && [ $iwidth -gt $WIDTH ]
    then
        # Stores filename without extension
        filename=`basename -s .jpg $i`
        # Creates thumbnail and adds -thumb to end of new file
        # convert -thumbnail ${WIDTH}x $i "$filename-thumb.png"
        cwebp $i -o "$filename-thumb.webp" -resize ${WIDTH} 0 -q 25 -z 9 -metadata 'none' -noalpha
    fi
done
# Loops through all png files in current folder
for i in *.png
do
    # Stores the width of the current file
    iwidth=`identify -format "%w" $i`
    # Checks current filename does not end with '-thumb' and
    # file is greater than desired width
    if [[ $i != *-thumb.jpg ]] && [ $iwidth -gt $WIDTH ]
    then
        # Stores filename without extension
        filename=`basename -s .png $i`
        # Creates thumbnail and adds -thumb to end of new file
        # convert -thumbnail ${WIDTH}x $i "$filename-thumb.png"
        cwebp $i -o "png-$filename-thumb.webp" -resize ${WIDTH} 0 -q 25 -z 9
    fi
done