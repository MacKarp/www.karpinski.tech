#!/bin/bash
# Dependencies:
# - img-optimize - https://virtubox.github.io/img-optimize/
# - imagemagick
# - jpegoptim
# - optipng

FOLDER="/home/karpiu/Repozytoria/www.karpinski.tech/static/images"
WIDTH=1280

# Resize all images except social-preview.png
find ${FOLDER} \( -iname '*.jpg' -o -iname '*.png' \) ! -iname 'social-preview.png' -exec convert \{} -verbose -resize $WIDTH\> \{} \;

# Optimize images
img-optimize --std --path ${FOLDER}
