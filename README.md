# shell-storage-timeline-client
*NIX CLI for the Storage.Timeline server

# Installation
```
wget https://raw.githubusercontent.com/vitche/shell-storage-timeline-client/master/storage-timeline.sh -O- | sh -s install
```

# CLI usage
```
# Add a string to the time-line
./storage-timeline.sh {serverUri} addString {schema} {timeLine} {value}

# Add a number to the time-line
./storage-timeline.sh {serverUri} addNumber {schema} {timeLine} {value}

# List all time-line strings
./storage-timeline.sh {serverUri} allStrings {schema} {timeLine}

# List all time-line numbers
./storage-timeline.sh {serverUri} allNumbers {schema} {timeLine}
```
