clear
echo "Bienvenido al configurador de maquina virtual <3"
echo "Por favor proporcione la siguiente informacion"
echo "Nombre de la maquina virtual"
echo -n ">>"
read nombre
echo "Numero de CPU's"
echo -n ">>"
read numeroCpu
echo "Tamano en GB de RAM"
echo -n ">>"
read tamanoRam1
tamanoRam=$((tamanoRam1 * 1000))
echo "Tamano en GB de VRAM"
echo -n ">>"
read tamanoVram1
tamanoVram=$((tamanoVram1 * 1000))
echo "Tamano en MB de almacenamiento"
echo -n ">>"
read tamanoAlmacenamiento
echo "Nombre de un controlador SATA"
echo -n ">>"
read controladorSata
echo "Nombre de un controlador IDE"
echo -n ">>"
read controladorIDE
VBoxManage createvm --name $nombre --ostype Linux --register
VBoxManage modifyvm $nombre --cpus $numeroCpu --memory $tamanoRam --vram $tamanoVram
VBoxManage createhd --filename /path/to/hard_drive_image/$nombre.vdi --size $tamanoAlmacenamiento --variant Standard
VBoxManage storagectl $nombre --name $controladorSata --add sata --bootable on
VBoxManage storageattach $nombre --storagectl $controladorSata --port 0 --device 0 --type hdd --medium /path/to/hard_drive_image/$nombre.vdi
VBoxManage storagectl $nombre --name $controladoIDE --add ide
VBoxManage storageattach $nombre --storagectl $controladorIDE --port 0 --device 0 --type dvddrive --medium /home/user/dvd.iso
echo "La maquina virtual $nombre ha sido creada y configurada correctamente"
VBoxManage showvminfo $nombre
