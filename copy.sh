#!/bin/bash
echo "Copy config?" 
select y in yes no
do
case $y in
"yes") cp -rf ~/myhyprlanddocs/* ~/.config/hypr/* ;;
"no") echo "if no than no" && exit ;;
esac
done
