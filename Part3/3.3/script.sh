#!/bin/sh
echo "Input github link:";

read gitrepository;

echo "input folder name to clone into"

read $foldername

git clone $gitrepository $foldername

cd $foldername

echo "Current directory..." $PWD

echo "input password.."

read -s password

echo "$password" | docker login -u=jonashr --password-stdin

echo "Input image name"

read imagename

docker run build -t $imagename .

docker push -t jonashr/$imagename