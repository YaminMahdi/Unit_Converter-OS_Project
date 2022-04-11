#!/usr/bin/bash

#####################################
# Author: Yamin Mahdi
# Version: v1.0.0
# Date: 10-04-22
# Description: This bash script is a Unit Calculator.
# Usage: myscript <directory_name> <file_name>
###########################
# Global variables ##############
# Functions #####################
#area

#unit
#1_length
function km2m()
{
    x=$1
    x=$((x/1000))
    echo x
    return 0
}
function home()
{
    echo "########################################"
    echo "## Area Calculator and Unit Converter ##"
    echo "## OS Lab Project                     ##"
    echo "########################################"
    echo "####              HOME              ####"
    echo "########################################"
    echo "## a) Area Calculator                 ##"
    echo "## b) Length Converter                ##"
    echo "## c) Currency Converter              ##"
    echo "## d) Data Converter                  ##"
    echo "## e) Mass Converter                  ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####     Press (ctrl+x) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option (a/b/c/d) and press ENTER: "

}

function lengthF()
{
    clear
    echo "########################################"
    echo "## Area Calculator and Unit Converter ##"
    echo "## OS Lab Project                     ##"
    echo "########################################"
    echo "####        Length Converter        ####"
    echo "########################################"
    echo "## (Select) From:                     ##"
    echo "## a) Kilometer (km)                  ##"
    echo "## b) Meter (m)                       ##"
    echo "## c) Centimeter (cm)                 ##"
    echo "## d) Milimeter (cm)                  ##"
    echo "## e) Mile (mi)                       ##"
    echo "## f) Foot (ft)                       ##"
    echo "## g) Inch (in)                       ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## x) Go BACK to HOME                 ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####     Press (ctrl+x) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option and press ENTER: "

}

function lengthT()
{
    clear
    echo "########################################"
    echo "## Area Calculator and Unit Converter ##"
    echo "## OS Lab Project                     ##"
    echo "########################################"
    echo "####          Converting..          ####"
    echo "########################################"
    #printf "%-10s |\n" "$1" "$2"
    pad="               "
    ff=$1+$2
    printf "## From %s %s (Select) to: %s ##\n" "$1" "$2" "${pad:${#ff}}" 
    #printf "%-50s %s\n" ##
    echo "## a) Kilometer (km)                  ##"
    echo "## b) Meter (m)                       ##"
    echo "## c) Centimeter (cm)                 ##"
    echo "## d) Milimeter (cm)                  ##"
    echo "## e) Mile (mi)                       ##"
    echo "## f) Foot (ft)                       ##"
    echo "## g) Inch (in)                       ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## x) Go BACK to HOME                 ##"
    echo "## y) Go BACK to Length Converter     ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####     Press (ctrl+x) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option and press ENTER: "

}
# Main body #####################
function main() 
{
  home
  read -r x
  ############
  if [[ "$x" == "a" ]]; then    #area
    echo "a"
  elif [[ "$x" == "b" ]]; then  
    lengthF
    read -r a
    ##############   km
    if [[ "$x" == "a" ]]; then
      echo -n "Enter a Value (km): "
      read -r in
      lengthT "$in" km
      read -r a
      ##############
      if [[ "$a" == "a" ]]; then
        echo "You need a doctor."
      elif [[ "$a" == "b" ]]; then
        echo "" 
        echo "print('$in Kilometer = ', '%.3f' %($in*1000), ' Centimeter')" | python3
        echo ""
      elif [[ "$a" == "c" ]]; then
        echo "" 
        echo "print('$in Kilometer = ', '%.3f' %($in*100000), ' Centimeter')" | python3
        echo ""
      elif [[ "$a" == "d" ]]; then
        echo "" 
        echo "print('$in Kilometer = ', '%.3f' %($in*1000000), ' Milimeter')" | python3
        echo ""
      elif [[ "$a" == "e" ]]; then
        echo "" 
        echo "print('$in Kilometer = ', '%.3f' %($in*0.6214), ' Mile')" | python3
        echo ""
      elif [[ "$a" == "f" ]]; then
        echo "" 
        echo "print('$in Kilometer = ', '%.3f' %($in*3280.613), ' Foot')" | python3
        echo ""
      elif [[ "$a" == "g" ]]; then
        echo "" 
        echo "print('$in Kilometer = ', '%.3f' %($in*32370.0787), ' Inch')" | python3
        echo ""
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
    ##############      m
    elif [[ "$x" == "b" ]]; then   
      echo -n "Enter a Value (m): "
      read -r in
      lengthT "$in" m
      read -r a
      if [[ "$a" == "a" ]]; then
        echo "" 
        echo "print('$in Meter = ', '%.3f' %($in*0.6214), ' Kilometer')" | python3
        echo ""
      elif [[ "$a" == "b" ]]; then
        echo "You need a doctor."
      elif [[ "$a" == "c" ]]; then
        echo "" 
        echo "print('$in Meter = ', '%.3f' %($in*100), ' Centimeter')" | python3
        echo ""       
      elif [[ "$a" == "d" ]]; then
        echo "" 
        echo "print('$in Meter = ', '%.3f' %($in*1000), ' Milimeter')" | python3
        echo ""
      elif [[ "$a" == "e" ]]; then
        echo "" 
        echo "print('$in Meter = ', '%.3f' %($in*0.0006214), ' Mile')" | python3
        echo ""
      elif [[ "$a" == "f" ]]; then
        echo "" 
        echo "print('$in Meter = ', '%.3f' %($in*3.2808), ' Foot')" | python3
        echo ""
      elif [[ "$a" == "g" ]]; then
        echo "" 
        echo "print('$in Meter = ', '%.3f' %($in*39.37), ' Inch')" | python3
        echo ""
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
      #####################   cm
    elif [[ "$x" == "c" ]]; then
      echo -n "Enter a Value (cm): "
      read -r in
      lengthT "$in" cm
      read -r a
      if [[ "$a" == "a" ]]; then
        echo "" 
        echo "print('$in Centimeter = ', '%.3f' %($in/100000), ' Kilometer')" | python3
        echo ""
      elif [[ "$a" == "b" ]]; then
        echo "" 
        echo "print('$in Centimeter = ', '%.3f' %($in/100), ' Meter')" | python3
        echo ""
      elif [[ "$a" == "c" ]]; then
        echo "You need a doctor."
      elif [[ "$a" == "d" ]]; then
        echo "" 
        echo "print('$in Centimeter = ', '%.3f' %($in*10), ' Milimeter')" | python3
        echo ""
      elif [[ "$a" == "e" ]]; then
        echo "" 
        echo "print('$in Centimeter = ', '%.3f' %($in/160934.4), ' Mile')" | python3
        echo ""
      elif [[ "$a" == "f" ]]; then
        echo "" 
        echo "print('$in Centimeter = ', '%.3f' %($in/30.48), ' Foot')" | python3
        echo ""
      elif [[ "$a" == "g" ]]; then
        echo "" 
        echo "print('$in Centimeter = ', '%.3f' %($in/2.54), ' Inch')" | python3
        echo ""  
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
      ############# mm
    elif [[ "$x" == "d" ]]; then
      echo -n "Enter a Value (mm): "
      read -r in
      lengthT "$in" cm
      read -r a
      if [[ "$a" == "a" ]]; then
        echo "" 
        echo "print('$in Milimeter = ', '%.3f' %($in/1000000), ' Kilometer')" | python3
        echo ""
      elif [[ "$a" == "b" ]]; then
        echo "" 
        echo "print('$in Milimeter = ', '%.3f' %($in/1000), ' Meter')" | python3
        echo ""
      elif [[ "$a" == "c" ]]; then
        echo "" 
        echo "print('$in Milimeter = ', '%.3f' %($in/10), ' Centimeter')" | python3
        echo ""
      elif [[ "$a" == "d" ]]; then
        echo "You need a doctor."
      elif [[ "$a" == "e" ]]; then
        echo "" 
        echo "print('$in Milimeter = ', '%.3f' %($in/1609344), ' Mile')" | python3
        echo ""
      elif [[ "$a" == "f" ]]; then
        echo "" 
        echo "print('$in Milimeter = ', '%.3f' %($in/304.8), ' Foot')" | python3
        echo ""
      elif [[ "$a" == "g" ]]; then
        echo "" 
        echo "print('$in Milimeter = ', '%.3f' %($in/25.4), ' Inch')" | python3
        echo ""  
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
      ########## mile
    elif [[ "$x" == "e" ]]; then
      echo -n "Enter a Value (mi): "
      read -r in
      lengthT "$in" mi
      read -r a
      if [[ "$a" == "a" ]]; then
        echo "" 
        echo "print('$in Mile = ', '%.3f' %($in*1.609344), ' Kilometer')" | python3
        echo ""
      elif [[ "$a" == "b" ]]; then
        echo "" 
        echo "print('$in Mile = ', '%.3f' %($in*1609.344), ' Meter')" | python3
        echo ""
      elif [[ "$a" == "c" ]]; then
        echo "" 
        echo "print('$in Mile = ', '%.3f' %($in*160934.4), ' Centimeter')" | python3
        echo ""
      elif [[ "$a" == "d" ]]; then
        echo "" 
        echo "print('$in Mile = ', '%.3f' %($in*1609344), ' Milimeter')" | python3
        echo ""
      elif [[ "$a" == "e" ]]; then
        echo "You need a doctor."
      elif [[ "$a" == "f" ]]; then
        echo "" 
        echo "print('$in Mile = ', '%.3f' %($in*5280), ' Foot')" | python3
        echo ""
      elif [[ "$a" == "g" ]]; then
        echo "" 
        echo "print('$in Mile = ', '%.3f' %($in/63360), ' Inch')" | python3
        echo ""  
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
      ########## foot
    elif [[ "$x" == "f" ]]; then
      echo -n "Enter a Value (ft): "
      read -r in
      lengthT "$in" ft
      read -r a
      if [[ "$a" == "a" ]]; then
        echo "" 
        echo "print('$in Foot = ', '%.3f' %($in/3280.84), ' Kilometer')" | python3
        echo ""
      elif [[ "$a" == "b" ]]; then
        echo "" 
        echo "print('$in Foot = ', '%.3f' %($in*0.3048), ' Meter')" | python3
        echo ""
      elif [[ "$a" == "c" ]]; then
        echo "" 
        echo "print('$in Foot = ', '%.3f' %($in*30.48), ' Centimeter')" | python3
        echo ""
      elif [[ "$a" == "d" ]]; then
        echo "" 
        echo "print('$in Foot = ', '%.3f' %($in*304.8), ' Milimeter')" | python3
        echo ""
      elif [[ "$a" == "e" ]]; then
        echo "" 
        echo -e "print('$in Foot = ', '%.3f' %($in/5280), ' Mile')" | python3
        echo ""
      elif [[ "$a" == "f" ]]; then
        echo "You need a doctor."
      elif [[ "$a" == "g" ]]; then
        echo "" 
        echo "print('$in Foot = ', '%.3f' %($in*12), ' Inch')" | python3
        echo ""  
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
      ########## inch
    elif [[ "$x" == "g" ]]; then
      echo -n "Enter a Value (in): "
      read -r in
      lengthT "$in" in
      read -r a
      if [[ "$a" == "a" ]]; then
        echo "" 
        echo "print('$in Inch = ', '%.3f' %($in/39370.0787), ' Kilometer')" | python3
        echo ""
      elif [[ "$a" == "b" ]]; then
        echo "" 
        echo "print('$in Inch = ', '%.3f' %($in*0.0254), ' Meter')" | python3
        echo ""
      elif [[ "$a" == "c" ]]; then
        echo "" 
        echo "print('$in Inch = ', '%.3f' %($in*2.54), ' Centimeter')" | python3
        echo ""
      elif [[ "$a" == "d" ]]; then
        echo "" 
        echo "print('$in Inch = ', '%.3f' %($in*25.4), ' Milimeter')" | python3
        echo ""
      elif [[ "$a" == "e" ]]; then
        echo "" 
        echo -e "print('$in Inch = ', '%.3f' %($in/63360), ' Mile')" | python3
        echo ""
      elif [[ "$a" == "f" ]]; then       
        echo "" 
        echo "print('$in Inch = ', '%.3f' %($in/12), ' Foot')" | python3
        echo ""
      elif [[ "$a" == "g" ]]; then
        echo "You need a doctor."
      else
        echo "Wrong Input. Try again. Going back to Home.."
        sleep 2
        clear
        main
      fi
      main
    else
      echo "Wrong Input. Try again. Going back to Home.."
      sleep 2
      clear
      main
    fi
  ############ end of lenght
  elif [[ "$x" == "c" ]]; then    #area
    echo "c"
  else
    echo "Wrong Input. Try again. Going back to Home.."
    sleep 2
    clear
    main
  fi
  main
}
main
# while [1]
# do

# done