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
