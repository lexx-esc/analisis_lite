#!/bin/sh
# -------------------------------------------------
# Инициализация GIT
# -------------------------------------------------

git init

if ! [[ "{{cookiecutter.git_user}}" = "global" ]];
then
    git config user.name "{{cookiecutter.git_user}}"
fi

if ! [[ "{{cookiecutter.git_email}}" = "global" ]]; 
then
   git config user.email "{{cookiecutter.git_email}}"
fi

git add .
git commit -m "initial commit"

