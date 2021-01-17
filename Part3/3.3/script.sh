#!/bin/sh
echo "Input github link to clone:";

read gitrepository;

echo "input directory name for cloned repository";

read directory;

git clone $gitrepository $directory

cd "$directory";

ls;

echo "Current directory..." $PWD

echo "Input docker username"

read dockerusername

echo "Input docker password.."

read -s password

echo "$password" | docker login -u=$dockerusername --password-stdin

echo "Input image name"

read imagename

docker build -t $dockerusername/$imagename .

docker push $dockerusername/$imagename