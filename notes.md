# Chapter 3

- Didn't understand the nature of **less** command mentioned here:

    *A little note for seeing this things: with the less command you can view both stdout (which will remain on the buffer) and the stderr that will be printed on the screen, but erased as you try to 'browse' the buffer.*

- **0>**  
    Redirect std input.

- **1>** or **>**  
    Redirect std output.

- **2>**  
    Redirect std error.

- **&>**  
    Redirect both stdout and stderr. Need to read more to understand it completely.

- **grep**  
    Global REgular Print

# Chapter 4 Pipes
- **|**  
    Pipe the output of a program to the input of another.

    ```
    ls -al | grep "\.txt$"
    ```

    is equivalent to

    ```
    ls -al *.txt
    ``` 
# Chapter 5: Variables
- Assignment  

    ```
    var="Mohit"
    echo $var
    ```

    ```
    var=$(ls-al)
    echo $var
    ```

- Local Variables

    ```
    HELLO=hello
    function hello{
        local HELLO="local hello"
        echo $HELLO
    }
    echo $HELLO
    ```

# Chapter 6: Conditionals
 - **if-else**  

    ```
    if [ expression ]; then
        command
    else
        command
    fi
    ```

# Chapter 7: Loops for, while and until

- **for** loop  

    ```
    for i in $(ls -al); do
        echo $i
    done
    ```

    This is also valid

    ```
    for i in $(seq 2 2 10);
    do
        echo $i
    done
    ```

- **While** loop

    ``` 
    Counter=0

    while [ $Counter -lt 10 ];
    do
        echo $Counter
        let Counter+=1
    done
    ```

- **Until** loop

    ```
    Counter=20

    until [ $Counter -lt 10 ];
    do
        echo $Counter
        let Counter-=1
    done
    ```

# Chapter 8: Functions

- **$?**  
    gives the exit code of the last statement executed. It also gives you the exit code returned by the
    shell script executed.
- **exit N**  
    Exit the script with *N* as the exit code. If *N* is omitted, exit code of the last statement executed is returned.

    ```
    function quit {
        # When the script terminates, type "$?" to get
        # exit status returned by the script.
        exit 12
    }

    function hello {
        echo hello
    }

    hello
    quit
    echo "After quit"
    ```

    Functions with parameters.

    ```
    function hello {
        first=$1
        last=$2
        echo "$first $last"
    }

    NAME="Mohit Sharma"
    # this causes word spliting
    hello $NAME 

    # No word splitting involved
    hello "Mohit Sharma" 

    # Using "" suppresses word splitting.
    hello "$NAME" 
    ```

    TODO: How to pass string with spaces as a single argument?   
        Suppress word splitting (Always use `"$var"` for referring to variables)

# Chapter 9: User Interfaces

- Used to create interactive menus.

    NOTE: This [link](https://www.shell-tips.com/bash/select-loop/) is useful for `select` statement.

    ```
    #!/bin/bash
    select var in *; # Options are files in the current directory.
    do
        # This prints the actual string corresponding to choice
        echo $var 

        # This prints the use input (numeric choice)
        echo $REPLY 
    done
    ```


    ```
    select var; # Options are the parameters to the script
    do
        # This prints the actual string corresponding to choice
        echo $var 

        # This prints the use input (numeric choice)
        echo $REPLY 
    done
    ```

    NOTE: Right now, I don't undertand how to read the options for select command from
    the output of another program.

# Chapter 10: Misc
- `read`  
   builtin is useful for reading user inputs. Word splitting happens for what is read from stdin.
   Each individual word is assigned to the `NAMES` provided as the argument to the command, if more
   words are available than the `NAMES` provided, last `NAME` holds all the leftover words.

- `bc`  
    It's much more than a simple builtin. It's a whole language to do arbitrary precision execution of arithematic statements.

- `here string`  
    Still don't understand what here strings are used for.

