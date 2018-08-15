#!/bin/bash

git branch -D temp

# create a temp branch by copy of 0810
git checkout -b temp 0810

# pull most recent code from master branch to temp branch
# might need to resolve conflict
git pull https://github.com/Zilliqa/Zilliqa.git master

# manual commit code if any conflict

# go to 0810
git checkout 0810

# merge from temp to 0810 locally
git merge --no-ff temp

# push merge to remote git repo
git push origin 0810