#!/bin/bash
cat <<EOF >> ~/.zshrc
function updt(){

	echo "[*] Buscando paquetes para actualizar..."
	sudo apt-get update

	echo "[*] Desea actualizar los paquetes? (s/n)"
	read answer
	if [[ "\$answer" == "s" ]] || [[ "\$answer" == "S" ]]; then
    		echo "[*] Actualizando paquetes..."
    		sudo apt-get upgrade -y
    		echo "[*] Paquetes actualizados."
	else
    		echo "[*] No se actualizaron los paquetes."
	fi
}
EOF
