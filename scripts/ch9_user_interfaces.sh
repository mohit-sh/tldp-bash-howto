#!/bin/bash
# Snippets from Chapter 9: User Interfaces (or Menus)

var="one two three four"
select item in $var;
do
    echo "You selected $item ($REPLY)"
    break;
done

