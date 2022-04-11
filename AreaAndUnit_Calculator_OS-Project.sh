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
    #echo "## c) Currency Converter              ##"
    #echo "## d) Data Converter                  ##"
    echo "## c) Mass Converter                  ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####    Press (x+enter) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option (a/b/c) and press ENTER: "
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
    echo "## From [Select]:                     ##"
    echo "## a) Kilometer (km)                  ##"
    echo "## b) Meter (m)                       ##"
    echo "## c) Centimeter (cm)                 ##"
    echo "## d) Milimeter (cm)                  ##"
    echo "## e) Mile (mi)                       ##"
    echo "## f) Foot (ft)                       ##"
    echo "## g) Inch (in)                       ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## h) Go BACK to HOME                 ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####    Press (x+enter) to EXIT     ####"
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
    pad="                "; ff=$1+$2
    printf "## From %s%s to [Select]: %s ##\n" "$1" "$2" "${pad:${#ff}}" 
    echo "## a) Kilometer (km)                  ##"
    echo "## b) Meter (m)                       ##"
    echo "## c) Centimeter (cm)                 ##"
    echo "## d) Milimeter (cm)                  ##"
    echo "## e) Mile (mi)                       ##"
    echo "## f) Foot (ft)                       ##"
    echo "## g) Inch (in)                       ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## h) Go BACK to HOME                 ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####    Press (x+enter) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option and press ENTER: "
}

function area()
{
    clear
    echo "########################################"
    echo "## Area Calculator and Unit Converter ##"
    echo "## OS Lab Project                     ##"
    echo "########################################"
    echo "####        Area Calculator         ####"
    echo "########################################"
    echo "## a) Area of Rectangle               ##"
    echo "## b) Area of Triangle                ##"
    echo "## c) Area of Trapezoid               ##"
    echo "## d) Area of Circle                  ##"
    echo "## e) Area of Parallelogram           ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## h) Go BACK to HOME                 ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####    Press (x+enter) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option and press ENTER: "
}

function massF()
{
    clear
    echo "########################################"
    echo "## Area Calculator and Unit Converter ##"
    echo "## OS Lab Project                     ##"
    echo "########################################"
    echo "####         Mass Converter         ####"
    echo "########################################"
    echo "## From [Select]:                     ##"
    echo "## a) Tonne (t)                       ##"
    echo "## b) Kilogram (kg)                   ##"
    echo "## c) Gram (g)                        ##"
    echo "## d) Miligram (mg)                   ##"
    echo "## e) Pound (lb)                      ##"
    echo "## f) Carat (ct)                      ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## h) Go BACK to HOME                 ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####    Press (x+enter) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option and press ENTER: "
}
function massT()
{
    clear
    echo "########################################"
    echo "## Area Calculator and Unit Converter ##"
    echo "## OS Lab Project                     ##"
    echo "########################################"
    echo "####          Converting..          ####"
    echo "########################################"
    pad="                "; ff=$1+$2
    printf "## From %s%s to [Select]: %s ##\n" "$1" "$2" "${pad:${#ff}}" 
    echo "## a) Tonne (t)                       ##"
    echo "## b) Kilogram (kg)                   ##"
    echo "## c) Gram (g)                        ##"
    echo "## d) Miligram (mg)                   ##"
    echo "## e) Pound (lb)                      ##"
    echo "## f) Carat (ct)                      ##"
    echo "##                                    ##"
    echo "########################################"
    echo "## h) Go BACK to HOME                 ##"
    echo "##                                    ##"
    echo "########################################"
    echo "####    Press (x+enter) to EXIT     ####"
    echo "########################################"
    echo -en "\nSelect One Option and press ENTER: "
}

# Main body #####################################################################
function main() 
{
    clear
    home
    read -r x
    ############
    if [[ "$x" == "a" ]]; then    #area
        area
        read -r a
        if [[ "$a" == "a" ]]; then
            read -rp "Enter Length of a Rectangle (meter): " l
            read -rp "Enter Length of a Rectangle (meter): " w
            echo "print('Area of Rectangle: ', $l*$w)" | python3
        elif [[ "$a" == "b" ]]; then  
            read -rp "Enter Length of Side-1 of a Triangle (meter): " a
            read -rp "Enter Length of Side-2 of a Triangle (meter): " b
            read -rp "Enter Length of Side-3 of a Triangle (meter): " c
            s=$(echo "print(($a+$b+$c)/2)" | python3)
            s=$(echo "print($s*($s-$a)*($s-$b)*($s-$c))" | python3)
            echo -en "\nArea of Triangle = "
            echo "scale=0; sqrt($s)" | bc | tr '\n' ' '  ############################ a=$(bc <<< "scale=0; sqrt($s)")
            echo -e "meter^2\n"
        elif [[ "$a" == "c" ]]; then  
            read -rp "Enter Length of Base-1 of a Trapezoid (meter): " a
            read -rp "Enter Length of Base-2 of a Trapezoid (meter): " b
            read -rp "Enter Length of Hight of a Trapezoid (meter) : " h
            echo ""
            echo "print('Area of Trapezoid = ',($a+$b)*$h/2,'meter^2')" | python3
            echo "" 
        elif [[ "$a" == "d" ]]; then  
            read -rp "Enter Length of Radius of a Circle (meter): " r
            echo ""
            echo "print('Area of Circle = ',$r*$r*3.1416,'meter^2')" | python3
            echo "" 
        elif [[ "$a" == "e" ]]; then  
            read -rp "Enter Length of Base of a Parallelogram (meter) : " b
            read -rp "Enter Length of Hight of a Parallelogram (meter): " h
            echo ""
            echo "print('Area of Parallelogram = ',$b*$h,'meter^2')" | python3
            echo "" 
        elif [[ "$a" == "h" ]]; then 
            main 
        elif [[ "$a" == "x" ]]; then  
            exit 
        else
            echo "Wrong Input. Try again."
            read -n 1 -s -r -p "Press any key to go to HOME.."
            main
        fi
    ######################################################################################
    elif [[ "$x" == "b" ]]; then   #length
        lengthF
        read -r f
        if [[ "$f" == "x" ]]; then  
            exit
        elif [[ "$f" == "h" ]]; then 
            main 
        fi
        read -rp "Enter a Value: " in
        mm=$in
        xx=mm
        if [[ "$f" == "a" ]]; then
            mm=$(echo "print($in*1000000)" | python3)
            xx=km
        elif [[ "$f" == "b" ]]; then  
            mm=$(echo "print($in*1000)" | python3)
            xx=m
        elif [[ "$f" == "c" ]]; then  
            mm=$(echo "print($in*10)" | python3)
            xx=cm
        elif [[ "$f" == "e" ]]; then  
            mm=$(echo "print($in*1609344)" | python3)
            xx=mi
        elif [[ "$f" == "f" ]]; then  
            mm=$(echo "print($in*304.8)" | python3)
            xx=ft
        elif [[ "$f" == "g" ]]; then  
            mm=$(echo "print($in*25.4)" | python3)
            xx=in
        else
            echo "Wrong Input. Try again."
            read -n 1 -s -r -p "Press any key to go to HOME.."
            main
        fi
        lengthT "$in" "$xx"
        read -r t
        echo "" 
        if [[ "$t" == "a" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm/1000000), 'km',sep='')" | python3
        elif [[ "$t" == "b" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm/1000), 'm',sep='')" | python3
        elif [[ "$t" == "c" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm/10), 'cm',sep='')" | python3
        elif [[ "$t" == "d" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm), 'mm',sep='')" | python3
        elif [[ "$t" == "e" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm/1609344), 'mi',sep='')" | python3
        elif [[ "$t" == "f" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm/304.8), 'ft',sep='')" | python3
        elif [[ "$t" == "g" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mm/25.4), 'in',sep='')" | python3
        elif [[ "$t" == "h" ]]; then 
            main 
        elif [[ "$t" == "x" ]]; then  
            exit 
        else
            echo "Wrong Input. Try again. Going back to Home.."
            sleep 2; clear; main
        fi
        echo "" 
        ###### end of length################################################################
    elif [[ "$x" == "c" ]]; then    ######mass
        massF
        read -r f
        if [[ "$f" == "x" ]]; then  
            exit
        elif [[ "$f" == "h" ]]; then 
            main 
        fi
        read -rp "Enter a Value: " in
        mg=$in
        xx=mg
        if [[ "$f" == "a" ]]; then
            mg=$(echo "print($in*1000000000)" | python3)
            xx=t
        elif [[ "$f" == "b" ]]; then  
            mg=$(echo "print($in*1000000)" | python3)
            xx=kg
        elif [[ "$f" == "c" ]]; then  
            mg=$(echo "print($in*1000)" | python3)
            xx=g
        elif [[ "$f" == "e" ]]; then  
            mg=$(echo "print($in*453592.37)" | python3)
            xx=lb
        elif [[ "$f" == "f" ]]; then  
            mg=$(echo "print($in*200)" | python3)
            xx=ct
        else
            echo "Wrong Input. Try again."
            read -n 1 -s -r -p "Press any key to go to HOME.."
            main
        fi
        massT "$in" "$xx"
        read -r t
        echo "" 
        if [[ "$t" == "a" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mg/1000000000), 't',sep='')" | python3
        elif [[ "$t" == "b" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mg/1000000), 'kg',sep='')" | python3
        elif [[ "$t" == "c" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mg/1000), 'g',sep='')" | python3
        elif [[ "$t" == "d" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mg), 'mg',sep='')" | python3
        elif [[ "$t" == "e" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mg/453592.37), 'lb',sep='')" | python3
        elif [[ "$t" == "f" ]]; then
            echo "print('$in$xx = ', '%.3f' %($mg/200), 'ct',sep='')" | python3
        elif [[ "$t" == "h" ]]; then 
            main 
        elif [[ "$t" == "x" ]]; then  
            exit 
        else
            echo "Wrong Input. Try again. Going back to Home.."
            sleep 2; clear; main
        fi
        echo "" 
        ###### end of mass
    elif [[ "$x" == "x" ]]; then  
        exit 
    else
        echo "Wrong Input. Try again."
        read -n 1 -s -r -p "Press any key to go to HOME.."
        main
    fi
    read -n 1 -s -r -p "Press any key to go to HOME.."
    main
}
main