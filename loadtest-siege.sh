#!/bin/bash

# Define variables
TIMES=5
CONNECTIONS_START=1
CONNECTIONS_END=5
CONNECTIONS_INCREMENT=2
REPS_START=10
REPS_END=1
REPS_INCREMENT=-1
URLS=("http://localhost:8000/" "http://localhost:8000/io_task" "http://localhost:8000/cpu_task" "http://localhost:8000/random_sleep" "http://localhost:8000/random_status" "http://localhost:8000/chain" "http://localhost:8000/error_test")

# Loop through the tests
for ((i=1; i<=$TIMES; i++))
do
    for ((j=0; j<${#URLS[@]}; j++))
    do
        for ((c=$CONNECTIONS_START; c<=$CONNECTIONS_END; c+=CONNECTIONS_INCREMENT))
        do
            for ((r=$REPS_START; r>=$REPS_END; r+=REPS_INCREMENT))
            do
                siege -c $c -r $r ${URLS[$j]}
            done
        done
    done
    sleep 5
done
