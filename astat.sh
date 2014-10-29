#!/bin/bash

cd $HOME
if [ ! -f as.log ] ; then
  :> as.log ;
fi

if [ -w as.log ] ; then
{
'who'
echo
top -n1 -b ;
echo
}>> as.log
echo " Запись добавлена"
else 
  echo " Запись не может быть добавлена "
fi
  
exit 0

