    #!/bin/bash

    #<------------------ Password Generator -------------------- ->

    # Argument Capture
    option1=$1
    value1=$((10#$2))

    option2=$3
    value2=$((10#$4))



    #############################
    # Function to print text in color
    # Params are
    ##  Color eg : red, green
    ##  message
    #############################
    function print_color(){
        color="\033[0m"  
        nc="\033[0m"     

        case $1 in
            "red" ) color="\033[31m" ;;
            "green" ) color="\033[32m" ;;
            * ) color="\033[0m" ;;
        esac
        echo -e "${color}${2}${nc}"
    }


    # Argument or input validation
    if [[ $option1 != "--length" || $value1 -eq 0 || $option2 != "--count" || $value2 -eq 0 ]]; then
        error="Invalid argument or value \nPlease follow: generate password --length <length> --count <count>"
        print_color "red" "$error"
        exit 1
    fi

    print_color "green" "password generated"


    #############################
    # Function to convert number to character 
    # Params are
    ##  nuumber eg : 1 , 2 etc.,
    #############################
    function convert_to_char() {
        if (( $1 >= 1 && $1 <= 26 )); then
            num=$(printf "%x" "$(($1 + 96 ))") # %x : to hex decimal, \x :  hex to char
            char=$(echo -e "\x$num") # -e : consider \ as backslash in string
            echo "$char"
        elif (( $1 >= 27 && $1 <= 52 )); then
            num=$(printf "%x" "$(( $1 + 38 ))")
            char=$(echo -e "\x$num")
            echo "$char"
        elif (( $1 >= 53 && $1 <= 62 )); then
            num=$(printf "%x" "$(( $1 - 5 ))")
            char=$(echo -e "\x$num")
            echo "$char"
        else
            echo ""
        fi
    }



    # Loop to generated password with input length
    while [[ $value2 != 0 ]]
    do
        result=""
        ((value2 -= 1))
        for (( number = 1 ; number <= value1 ; number++ ))
        do
            num=$(( RANDOM % 62 ))
            if(( num == 0 ))
            then
                num=1
            fi
            char=$(convert_to_char "$num")
            result="$result$char"
        done
        print_color "" "$result"
    done




