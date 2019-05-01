#!/bin/bash
echo "BOT | Telegram
Facebook: SentinelSociety"
echo ""
echo "Verificando ajustes"
sleep 1
fichero=ajustes.txt
if [ -f $fichero ];
then
	echo "Ajustes -> [√]"
	VariableFin=$(cat $fichero)
echo ""
echo "Tu numero: "$VariableFin
echo ""
echo "[1] LTC
[2] DOGE
[3] BCH
[4] ZEC
[5] Salir"
echo ""
read -p "N° de bot: " variable
case $variable in
        1)
                python ltc/main.py $VariableFin
          ;;
        2)
                python doge/main.py $VariableFin
          ;;
        3)
                python bch/main.py $VariableFin
          ;;
        4)
                python zec/main.py $VariableFin
          ;;
        5)
                exit
        ;;
        *)
                echo "Opcion incorrecta, Bye ;)"
          ;;
esac
else
	echo "Ajustes -> [×]"
	read -p "N° de telefono: " NUMERO
	echo $NUMERO >> $fichero

VariableFin=$(cat $fichero)
echo ""
echo "Tu numero: "$VariableFin
echo ""
echo "[1] LTC
[2] DOGE
[3] BCH
[4] ZEC
[5] Salir"
echo ""
read -p "N° de bot: " variable
case $variable in
	1)
		python ltc/main.py $VariableFin
          ;;
  	2)
        	python doge/main.py $VariableFin
          ;;
	3)
        	python bch/main.py $VariableFin
          ;;
	4)
		python zec/main.py $VariableFin
          ;;
	5)
		exit
	;;
	*)
		echo "Opcion incorrecta, Bye ;)"
          ;;
esac
fi
