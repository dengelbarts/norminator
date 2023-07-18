function create_alias {
    # Check if the .zshrc file exists
    if [ ! -f ~/.zshrc ]; then
        # If the file doesn't exist, create it
        touch ~/.zshrc
    fi

    # Add the alias to the .zshrc file
    echo 'alias norminator="bash ~/Documents/norm"' >> ~/.zshrc

    # Apply the changes
    source ~/.zshrc
}
