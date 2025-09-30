#!/bin/bash
FILE=tasks.txt

case $1 in
  add)
    echo "$2" >> $FILE
    echo "Task added: $2"
    ;;
  list)
    nl -w2 -s'. ' $FILE
    ;;
  done)
    sed -i '' "$2d" $FILE
    echo "Task $2 completed & removed!"
    ;;
  *)
    echo "Usage: ./todo.sh {add|list|done} [task]"
    ;;
esac

