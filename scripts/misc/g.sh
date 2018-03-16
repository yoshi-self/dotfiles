# g
#
# without argument : git status
# with arguments : git with arguments

args=("$@")

if [ $# -eq 0 ]; then
  git status
else
  command="git "
  i=0
  while [ $i -lt ${#args[@]} ]
  do
    command="${command} '${args[$i]}' "
    i=`expr $i + 1`
  done
  eval $command
fi
