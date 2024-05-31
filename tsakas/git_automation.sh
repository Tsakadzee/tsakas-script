#!bin/bash

if git &= /dev/null; then
echo "Git dainstalirebulia" else
echo "Git araris dainstalirebuli"
sudo apt-get update
sudo apt install git
fi
sudo mkdir Myrep1
sudo chmod 777 Myrep1
cd Myrep1
git init .
echo "Hello World" > README.md
git add .
git commit -m "added Hello World"
git branch -M main
git remote add origin git@github.com:Tsakadzee/Myrep1.git
git push -u origin main
git branch feature
git push --set-upstream origin feature
git checkout feature
echo "New Feature" > FEATURE.md
git add .
git commit -m "NewFeature"
git push origin feature
git checkout main
git merge feature
git add .
git commit -m "daimejra"
git push --set-upstream origin main
git tag v1.1.1
git add .
git commit -m "VER1"
git push --tags


