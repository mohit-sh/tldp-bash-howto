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

# Chapter 9: Functions

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
    hello NAME
    ```
    TODO: How to pass string with spaces as a single argument?
