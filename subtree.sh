#!/bin/bash

#
# Subtree configuration:
#   Add repository information you want to install.
#   Input repository url, branch, install direcotry.
#   Subtree action is automatically decided according
#   to the parent(master) directory. Show the mappping.
#
#   | Target directory status | Subtree action |
#   |-------------------------|----------------|
#   | no directory            | add            |
#   | no changes              | pull           |
#   | exist changs            | no action      |
#
subtrees=( \
  # repository                              branch   prefix
  "git@github.com:pinkienort/ssor.pages.git gh-pages ssor" \
  )


# main
for line in "${subtrees[@]}"
do
  subtree=(`echo $line`)
  cmd="add"
  if [ -a "${subtree[2]}" ]; then
    cmd="pull"
  fi
  # TODO: the function which stop invocation if the target dir has changes
  git subtree ${cmd} --prefix ${subtree[2]} ${subtree[0]} ${subtree[1]}
done
