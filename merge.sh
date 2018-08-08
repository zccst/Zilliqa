#!/bin/bash
git checkout -b zilliqa-master master
git pull https://github.com/Zilliqa/Zilliqa.git master

git checkout master
git merge --no-ff zilliqa-master
git push origin master

