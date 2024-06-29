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

You can also provide `s` flag to make the input silent, like password input or `a` flag for array input.

If you don't provide the variable name, the input will be saved into
the global variable `REPLY`
