#!/bin/sh
# prepare git hook pre-commit
## COPY ./hooks/pre-commit ./git/hooks/pre-commit
## CHMOD +x ./git/hooks/pre-commit
# rename sql files 
## Info https://stackoverflow.com/questions/15715825/how-do-you-get-the-git-repositorys-name-in-some-git-repository?lq=1
## ProjectNameVar = basename $(git remote get-url origin)
## IF ProjectName_diff.sql EXISTS AND ($ProjectNameVar)_diff.sql NOT EXITS then rename ProjectName_diff.sql -> ($ProjectNameVar)_diff.sql ELSE delete ProjectName_diff.sql
## IF ProjectName_statemachine.sql EXISTS AND ($ProjectNameVar)_statemachine.sql NOT EXITS then rename ProjectName_statemachine.sql -> ($ProjectNameVar)_statemachine.sql ELSE delete ProjectName_statemachine.sql
## IF ProjectName_statemachine.sql EXISTS AND ($ProjectNameVar)_statemachine.sql NOT EXITS then rename ProjectName_statemachine.sql -> ($ProjectNameVar)_statemachine.sql ELSE delete ProjectName_statemachine.sql



  