#! /bin/bash
#cars.sh
#Sabrina Toubbeh

MENU_CHOICE=3

while [ "$MENU_CHOICE" !=  "3" ]; do 
	
	echo "Please pick one choice: "
	echo "A) Add a car"
	echo "V) View list of cars"
	echo -e "Q) Quit \n"
	
	echo "Choose an option: "
	read MENU_CHOICE
	
	case "$MENU_CHOICE" in
	
	"A")
		echo "Year of the car "
		read YEAR
		echo "Make of the car "
		read MAKE
		echo "Model of the car "
		read MODEL
			
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;
	
	"V")
		echo
		sort My_old_cars | tr ":" " "
		echo ;;
	
	"Q")
		 echo "Goodbye";;
	
	*)
		 echo -e "ERROR\n";;
	
	esac
done
