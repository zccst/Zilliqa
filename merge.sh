#!/bin/bash
git checkout -b zil master
git pull https://github.com/Zilliqa/Zilliqa.git master

git checkout master
git merge --no-ff zil
git push origin master

