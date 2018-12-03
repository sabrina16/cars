#! /bin/bash
#cars.sh
#Sabrina Toubbeh

MENU_CHOICE=3

while [ "$MENU_CHOICE" !=  "q" ]; do 
	
	echo "Please pick one choice: "
	echo "1) Add a car"
	echo "2) View list of cars"
	echo -e "3) Quit \n"
	
	echo "Choose an option: "
	read MENU_CHOICE
	
	case "$MENU_CHOICE" in
	
	"1")
		echo "Year of the car "
		read YEAR
		echo "Make of the car "
		read MAKE
		echo "Model of the car "
		read MODEL
			
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;
	
	"2")
		echo
		sort My_old_cars | tr ":" " "
		echo ;;
	
	"3")
		 echo "Goodbye";;
	
	*)
		 echo -e "ERROR\n";;
	
	esac
done
