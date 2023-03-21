#!/bin/bash

# This has not been tested or run yet

# set the initial values for the variables
url="http://example.com"
concurrency=10
N=5

# run siege in a loop, increasing concurrency by N with each iteration
while true; do
  echo "Running siege with concurrency $concurrency..."
  siege -c $concurrency $url
  echo "Siege with concurrency $concurrency finished."

  # increase the concurrency by N for the next iteration
  concurrency=$((concurrency + N))

  # sleep for 5 seconds before starting the next iteration
  sleep 5
done


# TIMES=5
# COUNT=10
# REPS=5
# for i in $(eval echo "{1..$TIMES}")
# do
#     siege -c 1 -r 10 http://localhost:8000/
#     siege -c 3 -r 5 http://localhost:8000/io_task
#     siege -c 2 -r 5 http://localhost:8000/cpu_task
#     siege -c 5 -r 3 http://localhost:8000/random_sleep
#     siege -c 2 -r 10 http://localhost:8000/random_status
#     siege -c 2 -r 3 http://localhost:8000/chain
#     siege -c 1 -r 1 http://localhost:8000/error_test

#     siege -c $COUNT -r $REPS http://localhost:8000/
#     siege -c $COUNT -r $REPS http://localhost:8000/io_task
#     siege -c $COUNT -r $REPS http://localhost:8000/cpu_task
#     siege -c $COUNT -r $REPS http://localhost:8000/random_sleep
#     siege -c $COUNT -r $REPS http://localhost:8000/random_status
#     siege -c $COUNT -r $REPS http://localhost:8000/chain
#     siege -c $COUNT -r $REPS http://localhost:8000/error_test
#     sleep 5
# done
