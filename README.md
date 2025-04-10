# This repo contains code to learn shell scripts

To allow persmission to execute shell files use the following command:

```shell
chmod +x filename.sh
```

And now you can execute it like this:

```shell
./filename.sh
```

## Writing hello world

```shell
#! /bin/bash

echo "Hello world"
```

## Comments and variables

In bash there exists two types of variables:

- System variables, usually defined with capital letters
- User defined variables

You can access the value of the variable with the `$` symbol.
Variables can't start with numbers!

You can comment by using `#` symbol.

## To take user input you can use `read` function.

```shell
read variable_name
```

By default the input will start on the next line.
To enable same line input provide `-p` flag.

```shell
read -p "Enter your name: " name
```

You can also provide `s` flag to make the input silent like password or `a` flag for array input.

If you don't provide the variable name, the input will be saved into
the global variable `REPLY`

## Passing arguments to shell scripts

You can pass arguments to your scripts before your execute them in the following way:

```shell
./script-name.sh arg1 arg2 arg3
```

You can access from within the shell script in the two ways:

- Using numbered variables like so `$0`, `$1`, `$2`. Where `$1` is the first argument and `$0` is always the filename.

- Using global array of arguments by accessing `@` variable.

The length of the passed arguments is accessible with `#` variable.

## If statement

You can create an if statement like so:

```bash
if [ condition ]
then
    statement
elif [ condition ]
then
    statement
else
    statement
fi
```

### Integer comparison

- `-eq` - is equal to - `if [ $a -eq $b ]`
- `-ne` - is not equal to - `if [ $a -ne $b ]`
- `-gt` - is greater than - `if [ $a -gt $b ]`
- `-ge` - is greater than or equal - `if [ $a -ge $b ]`
- `-lt` - is less than - `if [ $a -lt $b ]`
- `-le` - is less than or equal - `if [ $a -le $b ]`

### String comparison

- `==` - is equal to - `if [ $a == $b ]`
- `!=` - is not equal to - `if [ $a != $b ]`
- `<` - is less than, in ASCII alphabetical order - `if [[ $a < $b ]]`
- `>` - is greater than, in ASCII alphabetical order - `if [[ $a > $b ]]`
- `-z` - string is null, that is, has zero length

## File test operators

To check for file existence and other things you can use file test operators together with if statement like so:

```shell
file_name="path/to/filename"

if [ -e $file_name ]
then
    condition
fi
```

- `e` flag for checking file existence
- `d` for checking directory existence
- `b` for checking if file is blob type file
- `c` for checking if file is character type file
- `s` for checking if file is empty
- `r` for checking file read permission
- `w` for checking file write permission
- `s` for checking file execution permission

## Appending text to the end of the file

You can use `cat` command with `>` or `>>` operators. The difference between them is that the first one clears the file content before appending and the other is not.

## Logical AND operator

You can use logical `AND` operator in the following ways:

```shell
if [ condition ] && [ condition ]
then
    statement
fi
```

```shell
if [ condition -a condition ]
then
    statement
fi
```

```shell
if [[ condition && condition ]]
then
    statement
fi
```

## Logical OR operator

You can use logical `OR` operator in the following ways:

```shell
if [ condition ] || [ condition ]
then
    statement
fi
```

```shell
if [ condition -o condition ]
then
    statement
fi
```

```shell
if [[ condition || condition ]]
then
    statement
fi
```

## Case statement

For pattern matching you can use case statement:

```shell
case expression in
    pattern1 )
        statements ;;
    pattern2 )
        statements ;;
esac
```

## Array variables

You can declare an array like so:

```shell
my_arr=("apple" "banana" "orange")
```

And you can access items in array with `[]` index operator:

```shell
echo "${my_arr[0]}"
```

To list full array use `@` as index:

```shell
echo "${my_arr[@]}"
```

No get the length of the array use `#` operator:

```shell
echo "The length of the array is: ${#my_arr[@]}"
```

## While loop

You can create a while loop to repeat instruction until a desired condition is met:

```shell
while [ condition ]
do
    statement
    statement
done
```

## For loop

You can create for loop in the many ways:

```shell
for VARIABLE in 1 2 3 ... 10
do
    statement
done
```

To create range:

```shell
for VARIABLE in {0..10..1}
do
    statement
done
```

Like in other programming languages:

```shell
for (( i=0; i<10; i++ ))
do
    statement
done
```

## Functions

You can create functions in the two following ways:

```shell
function name() {
    statement
}
```

or

```shell
name() {
    statement
}

name
```

You can access function arguments using `$1`, `$2`, etc.
