#!/usr/bin/env bash
# -*- ENCODING: UTF-8 -*-
#Script para instalar navegadores Web en Mac
#Chrome y Firefox

# Linux Shell Scripting 
#
#Creado por Ing. Armando Ibarra (armandoibarra1@gmail.com)
#Ultima modfificacion Viernes 8 de Febrero 2013
 # Then append the directory
 # export PATH=$NEWPATH:$1

#http://kikefree.wordpress.com/2011/06/21/firefox-5-0-installer-sh-script-para-instalar-firefox-5-0-en-gnulinux-i686-x86_64/
#http://blog.omgmog.net/post/updates-to-my-install-all-firefox-bash-script-for-mac-os-x/

lowercase()
{
    echo "" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

#Informacion del OS
SYSTEM=`( [ -f /bin/uname ] && /bin/uname -a ) || \
        ( [ -f /usr/bin/uname ] && /usr/bin/uname -a ) || echo ""`
ARCH=`[ -f /bin/arch ] && /bin/arch`
MACHINE=`[ -f /bin/machine ] && /bin/machine`

COMMAND=`echo $0 | sed -e 's,.*/,,'`
USAGE="Usage: $COMMAND [-PVL] [-t address] [-f filename] [-s severity]
       [-c address] [--request-id] [--version]"

#OS=`lowercase \`uname\``
KERNEL="uname -r"
MACH="uname -m"
DRIVE=('sda' 'sdb')
DEPENDENCIAS_OS=('xdialog' 'dialog' 'samba' 'smbclient')
DISTROS_LINUX=('Ubuntu' 'Debian' 'ArchLinux')
DIALOG=Xdialog
# # # Obtener el nombre de sistema operativo a travÃ©s de uname # # # 
OS_USUARIO="$(uname)"
#OS="Darwin"
PATH_ACTUAL=PWD
PATH_DESCARGAS=~/.descargas_armando

YELLOW="33[1;33m"
RED="33[0;31m"
ENDCOLOR="33[0m"
BLUE="33[34m"
GREEN="33[32m"

if [ $USER != root OR $USER =="administrator" ]; then
  echo -e $RED"Error: tienes que ser root"
  echo -e $YELLOW"finalizado"$ENDCOLOR
  exit 0
fi

ayuda()
{

cat <<HELP
xtitlebar -- change the name of an xterm, gnome-terminal or kde konsole

USAGE: xtitlebar [-h] "string_for_titlebar"

OPTIONS: -h this help text

EXAMPLE: xtitlebar "cvs"

HELP
    exit 0
}

wich_gui()
{
	if [ -z $DISPLAY ];then
   		DIALOG=dialog
   	else
    	DIALOG=Xdialog
   	fi
}


test_gui()
{

	#echo $DISPLAY
	if [ -z $DISPLAY ];then
 		DIALOG=dialog
  	else
   		#DIALOG=Xdialog
   		DIALOG=Xdialog
  	fi

 	$DIALOG --yesno "Is this fun" 0 0  

: <<'END'
 if [ -z $DISPLAY ]
 then
 DIALOG=dialog
  elif [ $count -gt 100 ]
	then
		 DIALOG=Xdialog
  else
   #DIALOG=Xdialog
   DIALOG=dialog
  fi

 	$DIALOG --yesno "Is this fun" 0 0  


 	if [ -z "$DISPLAY" ]; then
  echo Display not set
  exit 1
fi


END


}

test_gui2()
{

: <<'END'
 if [ -z $DISPLAY ]	

	case "$DISPLAY" in
        c) echo "$filename : C source file"
           ;;
        o) echo "$filename : Object file"
           ;;
        sh) echo "$filename : Shell script"
            ;;
        txt) echo "$filename : Text file"
             ;;
        *) echo " $filename : Not processed"
           ;;
	esac

fi
END

}

gui_dialog()
{

 dialog --title 'Message' --msgbox 'Hello, world!' 5 20
}

msn_exit()
{
	$DIALOG --yesno "Gracias por usar, este script (Ing. Armando)" 0 0  

}

os()
{
	X=""

}
#PATH=$HOME/.descargas_armando
#echo $PATH
# Este script hace una prueba muy simple para comprobar el espacio de disco.

#espacio="$(df-h | awk '{print $ 5}' | grep% | grep-v Uso | sort-n | tail -1 | cut-d"% "-f1 -)"

#echo $espacio
#echo $OS



: <<'END'


while read line; do
echo This file: $line;
done <<EOF
$(ls)
EOF

cat << EOF | psql ---params

EOF


HOST="aqui_pon_la_maquina_remota"
USER="aqui_pon_el_usuario_remoto"
PASS="aqui_pon_el_password_remoto"
CMD=$@
VAR=$(expect -c "
spawn ssh -o StrictHostKeyChecking=no $USER@$HOST $CMD
match_max 100000
expect \"*?assword:*\"
send -- \"$PASS\r\"
send -- \"\r\"
expect eof
")
echo "==============="
echo "$VAR"
END

: <<'END'
cat <<- _EOF_
    <HTML>
    <HEAD>
        <TITLE>
        The title of your page
        </TITLE>
    </HEAD>

    <BODY>
        Your page content goes here.
    </BODY>
    </HTML>
_EOF_
END


comando_remoto()
{
	 #lynx -dump URL_AL_SCRIPT | bash

	 lynx -dump http://www.freeos.com/guides/lsst/scripts/for6 | bash

}
verificar_dependencias_archlinux()
{	

 Xdialog --title "Que desea hacer con el backup?" \\
   --radiolist "Eliga que desa hacer con su backup \\
   /tmp/backup-$I.tar.gz" 0 0 0 \\
   correo "Enviar por correo" off  \\
   "copiar" "copiar a..." off > /tmp/user.cfg 2>&1
   accion_user=$(cat /tmp/user.cfg)


	
	which bash

	ls | sort

	 echo "En este directorio tenemos :"	 $(ls -l)

	FECHA=$(date)
 echo "Hola mundo"
 echo "Ahora mismo son"; echo $FECHA
 echo "Es hora   de despedirse.!"

 echo -n "Introduce: \t"
 read ENTRADA
 echo "Has tecleado: $ENTRADA"


	echo "Por favor, espere verificando dependencias ..."

	#DEPENDENCIAS="$(pacman -Qs sudo)"
	DEPENDENCIAS=cat $(ls)	

	$DEPENDENCIAS
	#pacman -Qs sudo
	#pacman -Qs curl
	#pacman -Qs wget
}

log()
{

	echo "To: someone@somewhere.com" > $BKLOG
	echo "From:Backups " >> $BKLOG
	echo -e "Subject: Generated backup report for `hostname` on $YEAR.$MONTH.$DAYn" >> $BKLOG

	echo -e ">> Backup for: $YEAR.$MONTH.$DAY started @ `date +%H:%M:%S`n" >> $BKLOG

}

descarga_navegadores_mac()
{
		cd $PATH_DESCARGAS


		if [ -e "$PATH_ACTUAL/googlechrome.dmg" ]
		then
			#echo “El Fichero ya existe”
			echo "Descarga completa"
		else
			echo "Descargando paquetes (Google Chrome), por favor espere ..."

			#X="$(uname --help)"
			# Descargamos el paquete de Samba
			curl -O http://dl.google.com/chrome/mac/beta/googlechrome.dmg
			echo "Descarga completa"
		fi

		if [ -e "$PATH_ACTUAL/Firefox%2018.0.2.dmg" ]
		then
			#echo “El Fichero ya existe”
			echo "Descarga completa"
		else
				echo "Descargando paquetes (Mozilla Firefox), por favor espere ..."
				curl -O http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/18.0.2/mac/es-MX/Firefox%2018.0.2.dmg
				

				echo -e $RED"Descarga completa"
		fi


# This script gives information about a file.

FILENAME="$1"

echo "Properties for $FILENAME:"

if [ -f $FILENAME ]; then
  echo "Size is $(ls -lh $FILENAME | awk '{ print $5 }')"
  echo "Type is $(file $FILENAME | cut -d":" -f2 -)"
  echo "Inode number is $(ls -i $FILENAME | cut -d" " -f1 -)"
  echo "$(df -h $FILENAME | grep -v Mounted | awk '{ print "On",$1", \
which is mounted as the",$6,"partition."}')"
else
  echo "File does not exist."
fi
		#ls -la

						#cd ~/.descargas_armando
	

	
		#descarga de firefox 
		 #http://www.mozilla.org/en-US/firefox/all/
		#wget http://fc06.deviantart.net/fs71/f/2012/323/d/8/gnome_shell__nord_by_0rax0-d3jl36q.zip


}

update_chrome()
{


CHROME_HOME="$HOME/Applications/chrome"
ARCH="i386"
 
if [ "$1x" == "updatex" ]; then
    cd /tmp
    mkdir google-chrome
    cd google-chrome
    echo "Descargando el paquete..."
    wget -q "http://dl.google.com/linux/direct/google-chrome-unstable_current_$ARCH.deb"
    echo "Extrayendo los archivos del paquete..."
    ar x "google-chrome-unstable_current_$ARCH.deb" data.tar.lzma
    lzma -d data.tar.lzma
    tar xf data.tar
    echo "Reemplazando la version actual..."
    cd opt/google
    mv "$CHROME_HOME/plugins" chrome
    rm -rf $CHROME_HOME
    mv chrome $CHROME_HOME
    echo "Eliminando archivos temporales..."
    cd /tmp
    rm -rf google-chrome
    echo "Google Chrome actualizado..."
else
    if [ "$1x" == "x" ]; then
        $CHROME_HOME/google-chrome --enable-plugins --homepage
    else
        $CHROME_HOME/google-chrome --enable-plugins "$@"
    fi
fi

}


dependencias_chrome()
{
	sudo apt-get install subversion python perl g++ bison flex gperf libnss3-dev
svn co http://src.chromium.org/svn/trunk/depot_tools/linux depot_tools
export LANG=C
./depot_tools/gclient config http://src.chromium.org/svn/trunk/src
./depot_tools/gclient sync
cd src/chrome
../third_party/scons/scons.py Hammer
}

install_chrome_firefox_arch()
{
	sudo pacman -S chromium --noconfirm
	sudo pacman -S firefox --noconfirm
	#yaourt -S chromium --noconfirm
}

install_chrome_firefox_ubuntu()
{
	sudo -v
	apt-get install chromium
	apt-get install firefox
	#yaourt -S chromium --noconfirm
}



install_chrome_firefox_debian()
{
	sudo -v
	apt-get install chromium
	apt-get install firefox
	#yaourt -S chromium --noconfirm
}


install_ie_archlinux()
{

	#Referenicas
	#https://wiki.archlinux.org/index.php/Wine
	#http://www.rdeeson.com/weblog/126/how-to-run-internet-explorer-7-8-and-9-in-linux-with-or-without-wine.html
	#http://frikinux.blogspot.mx/2011/10/ie-internet-explorer-5-55-o-6-el-que.html
	#http://www.cyberciti.biz/tips/how-to-install-internet-explorer-on-linux.html
	#http://linuxpoison.blogspot.mx/2008/06/how-to-run-ie-internet-explorer-in.html
	#http://www.taringa.net/posts/linux/5670856/Guia-de-Instalacion-de-Arch-Linux-1_-parte.html
	#http://wine-review.blogspot.mx/2009/11/internet-explorer-8-on-linux-with-wine.html
	pacman -S wine
	pacman -S wine_gecko

	#Configurar prefijo por defecto sin ejecutar un programa de Windows u otra herramienta de interfaz gráfica de usuario 
	env WINEPREFIX=~/.customprefix wineboot -u

	#Descargar IE v8
	#http://www.microsoft.com/downloads/details.aspx?FamilyID=341c2ad5-8c3d-4347-8c03-08cdecd8852b&displaylang=en
	 wine IE8-WindowsXP-x86-ENU.exe &

	#Desktop Launcher Menus

WINE_UTILITIES_MENU=cat <<HELP
<!DOCTYPE Menu PUBLIC "-//freedesktop//DTD Menu 1.0//EN"
 "http://www.freedesktop.org/standards/menu-spec/menu-1.0.dtd">
 <Menu>
   <Name>Applications</Name>
   <Menu>
     <Name>wine-wine</Name>
     <Directory>wine-wine.directory</Directory>
     <Include>
 	<Filename>wine-Configuration.desktop</Filename>
     </Include>
     <Include>
 	<Filename>wine-Browse C:\.desktop</Filename>
     </Include>
     <Include>
 	<Filename>wine-Uninstall Programs.desktop</Filename>
     </Include>
   </Menu>
 </Menu>

HELP >> ~/.config/menus/applications-merged/wine-utilities.menu



#Si no funciona usar

wget http://www.tatanka.com.br/ies4linux/downloads/ies4linux-latest.tar.gz

#O curl


#Extraer y correr el script de instalacion de IEs4Linux installer, de tatanka
#http://www.tatanka.com.br/ies4linux/download.html

tar zxvf ies4linux-latest.tar.gz
cd ies4linux-*
./ies4linux

Read more: http://linuxpoison.blogspot.mx/2008/06/how-to-run-ie-internet-explorer-in.html#ixzz2KtHZWY75


}

#gui_dialog

#[ -z "$1" ] && help
#[ "$1" = "-h" ] && help

# sent the escape sequence to change the xterm title bar:
#echo -e "\033]0;$1\007"
#

###############################################################################
# General UI/UX , Menu de Script                                              #
###############################################################################


#PresentaciÃ³n.
echo
echo "Script de Administración"
echo "------ -- -------------- -- ----- ------ -- ---"
echo


    #Mostramos el menÃº
    echo
    echo "Menu"
    echo "----"
    echo "    1. Instalar Chrome y Firefox en MacOS X"
    echo "    2. Instalar Chrome"
    echo "    3. Instalar Firefox "
    echo "    4. Instalar Internet Explorer v6 en Linux "
    echo "    0. Salir."
    echo
    echo -n "Elige una opción: "
    read opcion

#Menu de AdministraciÃ³n
while [ "$opcion" != "0" ]
do
    case $opcion in
        1 )
         	
			#Verificar depencdencias
				#verificar_dependencias_archlinux	
			#echo "Yeah"

		DESCARGA_NAVWEB=""


		if [ "$OS_USUARIO" == "Linux" ] ; then

			if [ "$OSTYPE" == "linux-gnu" ] ; then
				echo $OSTYPE "------"

				
				 echo "Por favor, elige tu distribución de Linux"

				 	#clear
					contador=0
				
					for valor in ${DISTROS_LINUX[*]}
					do
					echo "$contador ) $valor"
					contador=`expr $contador + 1`
					done

 				 echo -n "Su Distro es: "
    			 read distro

    			 DISTRO_USUARIO1=""

    			 case $distro in
        				0 )
							DISTRO_USUARIO1="Ubuntu"
							#echo $DISTRO_USUARIO1

							install_chrome_firefox_ubuntu

						break; ;;

						1 )
							DISTRO_USUARIO1="Debian"
							install_chrome_firefox_debian	

						break; ;;

						2 )
							DISTRO_USUARIO1="ArchLinux"
							install_chrome_firefox_arch
							msn_exit
							#	install_chrome_firefox_arch()

						break; ;;

						*)
							DISTRO_USUARIO1="Unknow"
							echo "Sistema no soportado"
							exit 0

						break; ;;
				 esac
				
				 		
			fi	

				

			#DESCARGA_NAVWEB=descarga_navegadores_mac
		elif [ "$OS_USUARIO" == "Darwin" ] ; then
			
			#OR  "$OSTYPE" =="~^Darwin"  ] ; then   echo $OS "--"
			DESCARGA_NAVWEB=descarga_navegadores_mac
		else
			echo "$(whoami), tu OS aun no esta soportado, para este script"
			exit 0	
		fi	



				#test_gui
         	 # Prep 2 - Checar si existe la carpeta
					if [ -d $PATH_DESCARGAS ] ; then
					#if [ -d $PATH ] ; then
						#sudo rm -rf $HOME/.backupgrubar
						#echo "$PATH_DESCARGAS"
						#descarga_navegadores_mac
						$DESCARGA_NAVWEB
					else
					#elif [ -f /etc/mandrake-release ] ; then
						#crear captea y descargas instaladores
						mkdir $PATH_DESCARGAS

						if [ -d $PATH_DESCARGAS ] ; then

							$DESCARGA_NAVWEB
						else
							echo "Por favor, verifique lOS_USUARIO permisos de usuario, no se pudo iniciar la descarga"
						fi
						#wget http://fc06.deviantart.net/fs71/f/2012/323/d/8/gnome_shell__nord_by_0rax0-d3jl36q.zip
						#http://www.google.com/chrome/eula.html?hl=es&brand=CHFQ&utm_campaign=en&utm_source=en-et-mp&utm_medium=et
					fi



			#Monat el dmg
			sudo hdiutil attach googlechrome.dmg
			sudo hdiutil attach Firefox%2018.0.2.dmg

			#lanzamos instalador 
			sudo open /Volumes/Google Chrome

			sudo open /Volumes/Firefox 18.0.2.dmg/samba3-3.2.15-2.mpkg
		


				break;	;;


         4) 
         
	
				echo "Tratando de instalar IE v6 para Linux"
				echo "Verificando dependencias ..."
				#Verificar OS 

				#Instalar deacuerdo al OS


				break;	;;
		

         0 ) 
         
	
				echo "    Hasta Pronto!"
				echo "    ----- -------"
				echo
				exit 0      
		;;

		*) echo "$OS no soportado, gracias!";
			ayuda

				break;	

            ;;

    esac
done

	   #test_gui
       #msn_exit 

#while [ $OS!="Windows" ]; do

#Menu de AdministraciÃ³n
  #  case $OS in
 #       "Linux") 
			
#			echo "Linux"
  #      ;;

 #       "Darwin")


#				echo -n "Â¿Deseas instalar los navegadores web Chrome y Firefox? [yes (y) /n (n)]"

				#read res

				#if [ res=="y" ]; then
				               
				 #echo "Tratando de instalar paquetes ..."[Yy]

				 # Prep 2 - Checar si existe la carpeta
					#if [ -d $HOME/.backupgrubar ] ; then
						#sudo rm -rf $HOME/.backupgrubar
					#	echo "Ok"
					#else
					# elif [ -f /etc/mandrake-release ] ; then
						#crear captea y descargas instaladores
					#	cd ~/
					
					#	mkdir ~/.descargas_armando

					#	cd ~/.descargas_armando

					#	echo "Descargando paquetes, por favor espere ..."

						#wget http://fc06.deviantart.net/fs71/f/2012/323/d/8/gnome_shell__nord_by_0rax0-d3jl36q.zip

						#wget http://fc06.deviantart.net/fs71/f/2012/323/d/8/gnome_shell__nord_by_0rax0-d3jl36q.zip


					#fi

				#fi
#			;;
			
#		*) echo "$OS no soportado, gracias!";
#			exit 0
#			;;
#esac
#done
#while true; do
#read -p "Would you like to open Firefox (Y/N)?" input
#case $input in
#[Yy]* ) firefox; break;;
#[Nn]* ) echo "Goodbye!! $(whoami)"; break;;
 #    *) echo "Please answer yes or no.";;
#esac
#done

#Si es ubuntu o debian
#https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
	

#Crear la carpeta 
#	sudo mkdir $HOME/.backupgrubar
#	sudo chown $USER -R $HOME/.backupgrubar
#Â·sudo chmod 775 -R $HOME/.backupgrubar

# # # AÃ±adir alias  como por vÃ­a oral utilizando _myos $ # # # 
#caso  $ _myos  en 
   #Linux )  alias  foo = '/ ruta / a / linux / bin / foo' ;;
   #FreeBSD | OpenBSD )  alias  foo = '/ ruta / al / bsd / bin / foo' ;;
  # SunOS )  alias  foo = '/ ruta / al / SunOS / bin / foo' ;;
 #  * ) ;;
# esac

#case $1 in
#  -h )
#	echo "AquÃ­ va la ayuda"
#	;;
  #-e )
	#echo "OpciÃ³n -e "
	#;;
	#esac


exit 0