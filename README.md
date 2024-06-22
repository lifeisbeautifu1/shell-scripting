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

You can comment with using `#` symbol.
