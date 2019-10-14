#!/bin/bash
mkdir tmp411
git clone "${GIT_REPO}"
python -m pip install pillow -t tmp411
rm -f /io/lambda.zip
cp -r /io/* tmp411
cd tmp411
zip -r /io/lambda.zip *