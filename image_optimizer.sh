#!/bin/bash
# Dependancies
# - img-optimize - https://virtubox.github.io/img-optimize/
# - imagemagick
# - jpegoptim
# - optipng

FOLDER="/home/karpiu/Repozytoria/www.karpinski.tech/static/images"

# max width
WIDTH=1280

#resize png or jpg to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize $WIDTH\> \{} \;
img-optimize --std --path ${FOLDER}
