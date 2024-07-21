#!/bin/bash
set +e

retryable() {
    local retries=2
    local count=0
    local success=0
    local default_wait_interval=5  # Default wait time before retrying (in seconds)

    # Check if the first argument is a number
    if [[ $1 =~ ^[0-9]+$ ]]; then
        local wait_interval=$1
        shift  # Remove the first argument (wait_interval) from the list of arguments
    else
        local wait_interval=$default_wait_interval
    fi

    while [[ $count -lt $retries ]]; do
        "$@"
        if [[ $? -eq 0 ]]; then
            success=1
            break
        fi
        count=$((count + 1))
        echo "Command failed. Retrying in $wait_interval seconds... ($((retries - count)) more times)"
        sleep $wait_interval
    done

    if [[ $success -eq 0 ]]; then
        echo "Command failed after $retries attempts."
        return 1
    fi
    return 0
}
