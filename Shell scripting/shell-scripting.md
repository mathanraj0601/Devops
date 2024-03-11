# Shell Scripting

- It helps to automate the repitative task or time consuming manual process with just running a script file

## Making a script

- plan what the script for
- note down the step along with command
- put the command in order and store it with a meaning name so that other can understand what is the script for ?
- using bash command we can execute eg: *script-name.sh*
- if you what to make it as a command we need to store with out any extension
- as command in linux when typed the os will search in the path local so using export path=$path+"script-location"
- The above path command let the OS to look in the particular area for the script file.
- if permission denied make is as executable by using chmod.

## Variable

- To prevent hard coding data in script file
- To store and display the command output inside a script
- To make difference between string and variable inside a command use $ sign infront of variable
- example
```
name = mathan
echo $name
```

- incase of storing
```
name = $(echo mathan)
```
we can use the name anywhere with $ sign

>For appending with other string ${var}otherstring  
example : $(name)raj


## Command line argument and prompting

- We have hard coded the value inside the script in a variable so every time for running different value we need to modify the script and run to overcome that we can use two approches
  
- Command line argument : every command you write is taken as a seperate in-built variable starting from 0 and goes on
example mkdir mathan -> $0 for mkdir and $1 for mathan so we can modify our script to get the command line argument as input from user

- Through prompting input : Using read *variable-name* we can ask user to give input. for example read -p "enter name" *variable-name* inside the script will ask user to enter name

```
read -p "Enter your name: " username
```

For making a inclusive design that make the user to aware of what they are doing we need to use prompting otherwise for script reusability we go for command line input

We can use both in a script using flow control.

## Arthimetic operation

- using expr *expression-with-space-between-them* like " expr 1 + 2 "
> Note : for multiplication go for "expr 2 /* 3 " as " * " in linux denote -> for all so make it represent multiplication we use backslash.
> in case of variable "expr $A + $B "
> Space between symbol are mandatory.

- using double paranthesis : (( 1+2 )) and assign it to variable or using echo command to print there is no need for "/*" and $ for variables. Example : (( 1 * 2 )) ,  ((a+b)) and we can use increment and decrement operator as in c like ((a++)), ((--a)) etc.,

- using pipe bc -l (calculator) to return decimal values example: expr 10 / 3 | bc -l

## Flow control

- if else in shell scripts

```bash
if <<condition>>
then
    <<Execute the command>>
elif <<condition>>
then 
    <<Execute the command>>
else
    <<Execute the command>>
fi

```

- if and fi denotes the block code for the flow we need to specify if for start and fi for end

- command are usual  like cd, mkdir
  
- Condition are conditional operator and specified inside a [ square bracket ] for all shell and for bash and modern shell [[ double square brac]] and has lot more feature,

> Note always give space inbetween the bracket like [ "a" = "b" ]

## Conditional operator

for both [[]] and []

|operator| description|
|:---:|:---:|
| "string" = "string" | comparing string for equality|
| "string" != "string" | comparing string for non -equality|
| 1 -eq 2 | for comparing number "="|
| 1 -ne 2 | for comparing number "!="|
| 1 -gt 2 | for comparing number ">"|
| 1 -lt 2 | for comparing number "<>"|

for [[]]

|operator| description|
|:---:|:---:|
| "string" > "string" | comparing string less than|
| "string" < "string" | comparing string greater than based on alphabetical order|
| "abcd" =   `*bc*`  | checking pattern matching of string like substring|

| "abcd" =   ab[cd]  | checking 3rd character is c or d|

## Logical opertor

!! : or
&& : and

```
[condition]  !! (or)  && [condition]
[[condition  !! (or)  && condition]]
```
The usage based on bracket is different.

## operator for file

|operator| description|
|:---:|:---:|
| -e file | file exits |
| -d file | file exits and it is directory|
| -w file | writable |
| -x file | executable |
| -s file | size greater than 0 |
| -z variable | to check whether the string is empty or not |

## Loops

### For-loop
syntax: 
```
for <<condition>>
do
    <<commands>>
done
```
do is the start of the block and done is the end
- we can use for loop in different manner

1. We can give inputs with a space between them.
```
for word in mathan kishore ajay mk 
do
    echo $word
done
```
2. we can put all the name in a file and used it here
```
for word in `cat *file-name*` or $(cat *file-name*)
do
    echo $word
done
```
> Note : preferable to use $(  ) for giving command then ``
3. using ..  ti give range of number it work in certain shells like bourne again shell (bash)
```
for word 1..100
do
    echo $word
done
```
4. Like normal programming language using (())
```
for (( i=0 ; i<10 ; i++ ))
do
    echo $word
done
```

### While loop:
Syntax :
```
while [ <<condition>> ]
do
    <<commands>>
done
```
condition are similar to if statement, do and done block are similar to for loop

> Note : "break" statement is  used to stop the loop or flow,
  "continue" statement is  to next iteration in loop

## Switch statement
```
case <<value>> in

    value ) <<commasd>>
        ;;
    value ) <<command>>
        ;;
    * ) <<command>>
        ;;
```

Note :

- break is used for conditionally moving out of case block example having a while condition inside a case block with break

   ```
   value ) <<command>>
         while <<condition>
         do
           break
         done
        ;;
  ```
   
- ";;" to terminate or indicate the end of the individual block inside the case
  ```
   value ) <<command>>
        ;;
  ```
- " * " : is used to specify default in switch statement
- " ;; ": is like execute the command and break if the value matches

## Shebang

- some expression or syntax that is mentioned above works well with certain shell so when we share script we need mention to the people which script to run. To overcome this shebang come to pley while starting the shell to run the script file the first line should be #! *shell-name/location* so that os itself execute it on the shell example : ` #! bin/bash `

## Exit code
Usually when a script fail it update the inbuilt exit variable "?" to non zero number and the variable is always intialized to zero

- To check the exit code after every command run `echo $?`

- There is no need to specify for success but for failed specify in the script `exit "non-zero-value*` example
`exit 12`

- To user know the script is failed by mentioning the exit code

## Function
- To create a modular script without duplicates
syntax :
```
function definition:
function method-name()
{
    echo $1
}

function calling: 
method-name parameter
```
 $1 inside the method denotes the which paramter and not command line arguments

 Return inside a function used to update exit code with out entirely stopping the scripts

 To get return value inside the function echo the value and when ever called assign it to a variable
```
 // function definition:
function method-name()
{
    echo "called"
}

 // function calling: 
result = $(method-name parameter)
```
## IDE for shell scripts

- CLI - VIM or VI and check with utility like shellcheck
- GUI - pycharm,vs,atom,google shell check


## Redirection in command

- "<" : input to a command
- ">" : output to a file
- "|" : input of one command to another command
- "<<" : delimiter for multiple line (used alone eith EOF)
- "<<-" : delimiter with a tab space for better readability  (used alone eith EOF)
