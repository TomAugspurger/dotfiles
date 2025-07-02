#!/bin/bash
uv_venv_cache() {
    # Check if UV_CACHE_DIR is set
    if [[ -z "$UV_CACHE_DIR" ]]; then
        echo "Error: UV_CACHE_DIR environment variable is not set"
        return 1
    fi

    # Get the current directory
    current_dir=$(pwd)
    
    # Get the user's home directory
    home_dir=$(echo ~)
    
    # Calculate the subpath (current directory relative to home)
    subpath=$(realpath -s --relative-to="$home_dir" "$current_dir")
    # Construct the virtual environment path
    
    venv_path="$UV_CACHE_DIR/../envs/$subpath"
    
    # Create the directory structure if it doesn't exist
    mkdir -p "$(dirname "$venv_path")"

    venv_path=$(realpath -s --canonicalize-missing "$venv_path")
    
    if [[ ! -d "$venv_path" ]]; then
        uv venv "$venv_path"
    fi
    
    # activate the venv
    source "$venv_path/bin/activate"
    
}
