#!/bin/bash

npx create-react-app react_blackbird
# cd react_blackbird
# npm start

git init
git add .
git commit -m "Initial Create"
git remote add origin https://github.com/myyandar/internship.git
git push -u origin main

cd react_blackbird/src

FILENAME='App.js'
ORIGINAL_STRING_1='./logo.svg'
ORIGINAL_STRING_1='https://reactjs.org'
NEW_STRING_1='https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg'
NEW_STRING_2='https://www.propelleraero.com/dirtmate/'

sed -i 's+${ORIGINAL_STRING_1}+${NEW_STRING_1}+;s+${ORIGINAL_STRING_2}+${NEW_STRING_2}+' App.js

cd ..
cd ..

git commit -m "updated logo"
git remote add origin https://github.com/myyandar/internship.git
git push -u origin main

gh pr checkout update_logo
gh pr create

git push origin -u
gh pr merge