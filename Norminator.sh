#Brought to you by Jordan Kevin and Daan
#How-to:
#1. Create a new file in your Documents folder, name it 'norm' and paste this code there
#2. Install Oh My Zsh
#3. In your user root, do 'nano .zshrc'
#4. Add a line at the top that reads: 'alias n="bash ~/Documents/norm"
#5. Save and exit using ctrl+o -> return -> ctrl+x

#How to use:
#1. When you want to check something with norminette, split your terminal vertically and use the new window to go to the directory containing your code file
#2. Execute 'n' and the norm script will execute norminette in a loop
#3. In your main Window, everytime you save the changes to your code, the errors will dynamically change in the other window

#!/bin/bash

while true; do
    clear
    output=$(norminette $1)
    echo "$output"
    all_ok=true
    while read -r line; do
        if [[ "$line" != *"OK!"* ]]; then
            all_ok=false
            break
        fi
    done <<< "$output"
    if $all_ok; then
        afplay ~/Norminator/success.mp3 &
        break
    fi
    sleep 1
done
