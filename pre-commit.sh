#!/bin/sh

STAGED_GO_FILES=$(git diff --staged --name-only | grep ".go$")
PASSED=true

if [[ "$STAGED_GO_FILES" = "" ]]; then
    echo "no \".go\" files stashed"
    exit 0
fi

for FILE in $STAGED_GO_FILES
do

  # organize your imports
  goimports -w $FILE

  # just linting
  golint "-set_exit_status" $FILE
  if [[ $? == 1 ]]; then
    PASSED=false
  fi

  # another linter
  go vet $FILE
  if [[ $? != 0 ]]; then
    PASSED=false
  fi

  # format your code
  gofmt -l $FILE
   if [[ $? != 0 ]]; then
    PASSED=false
  fi

done

if ! PASSED; then
  printf "commit failed\n"
  exit 1
else
  printf "commit succeeded\n"
fi

exit 0
