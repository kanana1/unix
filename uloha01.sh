if [ "$1" == "--typ" ]; then
	if [ -e "$2" ]; then
		if [ -f "$2" ]; then
			echo "soubor"
		elif [ -d "$2" ]; then
			echo "adresar"
		elif [ -L "$2" ]; then
			echo "symbolicky link"
		elif [ -c "$2" ]; then
			echo "znakove zarizeni"
		elif [ -b "$2" ]; then
			echo "blokove zarizeni"
		elif [ -p "$2" ]; then
			echo "roura"
		elif [ -s "$2" ]; then
			echo "socket"
		fi
	else 
		echo "Chyba"
		exit 1
	fi	
	exit 0
elif [ "$1" == "--help" ]; then
	echo "Pouziti: uloha01.sh [--typ|--help] [cesta_k_souboru]"
	echo "--typ	vypise typ souboru"
	echo "--help	vypise navod na pouziti"
	echo "Exit status:"
	echo "0 ... pokud soubor existuje"
	echo "1 ... pokud soubor neexistuje"
	exit 0
fi	
