function create_alias {
    # Check if the .bashrc file exists
    if [ ! -f ~/.bashrc ]; then
        # If the file doesn't exist, create it
        touch ~/.bashrc
    fi

    # Add the alias to the .bashrc file

    echo 'alias norminator="bash ~/Documents/norm"' >> ~/.bashrc

    # Apply the changes
    source ~/.bashrc
}
