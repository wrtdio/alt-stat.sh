#!/bin/bash
a=wrtdio
b=koshken
cd $HOME
if [ ! -f as.log ] ; then
  :> as.log ;
fi

if [ -w as.log ] ; then
{
'top -bn 1'
'who'
echo
}>> as.log
  echo " Запись добавлена"
else 
  echo " Запись не может быть добавлена "
fi
  

 grep -wv $a as.log >> warn.log
 grep -wv $b as.log >> warn.log

if [ $1 -a w ] ; then
  tail -n 5 as.log ;
else 

   exit 0
fi

