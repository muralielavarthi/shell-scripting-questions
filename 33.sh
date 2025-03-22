#!/bin/bash

#!/bin/bash

echo -n "Enter valid directory path: "
read DIR

if [ -d "$DIR" ]; then
    LOG_FILES=$(find "$DIR" -type f -name "*.log")
    
    # Create/clear output.txt before appending
    > output.txt
    
    while read -r LINE; do
        # Check if the script has permission to read the log file
        if [ -r "$LINE" ]; then
            # Check if the log file contains "error" and append to output.txt
            grep -i "error" "$LINE" &>/dev/null
            if [ $? -eq 0 ]; then
                echo "$LINE" >> output.txt
            fi
        else
            echo "Permission denied to read: $LINE" >> output.txt
        fi
    done <<< "$LOG_FILES"  # Pass files to the while loop

    echo "Errors have been logged to output.txt"
else
    echo "Invalid directory path"
fi

