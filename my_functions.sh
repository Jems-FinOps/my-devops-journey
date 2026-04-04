#!/bin/bash

# 1. function for Greeting
say_hello() {
    echo "Hello, Well Come to Day 13 Devops Journey"
}

# 2. system information fun.
show_system_info() {
    echo "--- System Info ---"
    uptime
    echo "-------------------"
}
greet_user() {
    echo "Hey, $1! what i can help you?"
}

check_ram() {
    echo "--- RAM Usage ---"
    free -h
    echo "-----------------"
}
greet_user "John"
# Calling the functions
say_hello
show_system_info

