!#/bin/bash
echo "czy chcesz skopiować pliki? 
select y in Tak Nie
do
case $y in
"Tak") cp -rf ~/myhyprlanddocs/* ~/.config/hypr/* ;;
"Nie") echo "Jak nie to nie" && exit ;;
*) echo "Wybierz Tak lub Nie";;
esac
done
