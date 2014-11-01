#!/bin/bash
. $HOME/scripts/astat.conf

cur_d=`date +%Y/%m/%d_%H:%M`
if [ ! -d "$dir_source" ] ; then
  mkdir $dir_source
fi
cd $HOME
if [ ! -f "$source" ] ; then
  :> $source ;
fi
if [ ! -f "$log" ] ; then
  :> $log
fi
if [ -w "$source" ] ; then

{
'who'
echo
top -n1 -b ;
echo
}>> $source
 echo "$cur_d Запись добавлена">> $log
else 
  echo "$cur_d Запись не может быть добавлена ">> $log
fi

if [ ! 'grep -c $sus1 $source' == 0 ] ; then

  :> $sourceb ;
{
echo " $bh1  $cur_d " ;
cat $bh1
echo
}>> $sourceb
fi

