clear
echo "Bienvenido al menu de servicios <3"
echo "1 - Listar el contenido de un fichero"
echo "2 - Crear un archivo de texto que contenga una simple linea de texto"
echo "3 - Comparar dos archivos de texto"
echo "4 - Mostrar el uso del comando awk"
echo "5 - mostrar el uso del comando grep"
echo -n ">>"
read seleccion
clear
case $seleccion in 
	1)
	echo -e "\e[34m1 - Listar el contenido de un fichero\e[0m"
	echo -e "Por favor introduzca la \e[1;31mruta absoluta\e[0m del fichero"
	echo -n ">>"
	read rutaAbsoluta
	clear
	echo -e "Contenido de la carpeta: \e[1;32m$rutaAbsoluta\e[0m"
	ls "$rutaAbsoluta"
	;;
	2)
	echo -e "\e[34m2 - Crear un archivo de texto que contenga una simple linea de texto\e[0m"
	echo -e "Por favor introduzca el \e[1;31mnombre del archivo\e[0m"
	echo -n ">>"
	read nombreArchivo
	echo -e "Por favor introduzca el \e[1;31mcontenido del archivo\e[0m"
	echo -n ">>"
	read contenidoArchivo
	echo "$contenidoArchivo" > "$nombreArchivo.txt"
	clear
	echo -e "El archivo \e[1;32m$nombreArchivo\e[0m ha sido creado"
	;;
	3)
	echo -e "\e[34m3 - Comparar 2 archivos de texto\e[0m"
	echo -e "Por favor introduzca la \e[1;31mruta absoluta\e[0m del primer archivo"
	echo -n ">>"
	read archivo1
	echo -e "Por favor introduzca la \e[1;31mruta absoluta\e[0m del sgundo archivo"
	echo -n ">>"
	read archivo2
	clear
	echo -e "\e[1;32mResultado de la comparacion\e[0m"
	diff "$archivo1" "$archivo2"
	;;
	4)
	echo -e "\e[34m4 - Mostrar el uso del comando awk\e[0m"
	echo -e "El comando \e[1;32mawk\e[0m es una herramienta poderosa y flexible para procesar y manipular texto en Linux y otros sistemas Unix-Like"
	awk --help
	;;
	5)
	echo -e "\e[34m5 - Mostrar el uso del comando grep\e[0m"
	echo -e "El comando \e[1;32mgrep\e[0m (Global Regular Expression Print) es una herramienta de linea de comandos en Linux/Unix utilizada para buscar patrones o cadenas de texto dentro de archivos o flujos de texto"
	grep --help
	;;
esac
