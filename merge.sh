#!/bin/bash
git branch -D zil
git checkout -b zil 0810
git pull https://github.com/Zilliqa/Zilliqa.git master

git checkout 0810
git merge --no-ff zil
git push origin 0810

