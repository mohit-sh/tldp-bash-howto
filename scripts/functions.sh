#!/bin/bash

function print_args() {
    echo $# 
    echo $1
}

var="Mohit Sharma"
print_args "Mohit Sharma"
print_args $var
print_args "$var"
