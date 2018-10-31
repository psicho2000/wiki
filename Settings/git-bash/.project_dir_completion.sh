#!/usr/bin/env bash

# Definitions
export project_base_dir='/d/projects/cloud'

alias pj='project-dir'

function project-dir() {
    if [ -z "$1" ]; then
        cd $project_base_dir
        cat << EOF
Usage: project-dir [directory]
    directory will be searched in defined project_base_dir (currently being '$project_base_dir')
    directory can be a substring of actual directory
EOF
        return
    fi
    subdirs=(`find $project_base_dir -mindepth 1 -maxdepth 1 -type d -printf '%f\n'|grep $1`)
    dircount=${#subdirs[@]}
    if [ "$dircount" -eq "0" ]; then
        echo "No directory matching '$1' found under '$project_base_dir'."
    elif [ "$dircount" -eq "1" ]; then
        cd $project_base_dir/${subdirs[0]}
    else
        # in case of an exact match, change dir
        for i in "${subdirs[@]}"
        do
            if [ "$i" = "$1" ]; then
                cd $project_base_dir/$1
                return
            fi
        done

        echo "Found multiple directories matching '$1':"
        for i in "${subdirs[@]}"
        do
            echo "    $i"
        done
    fi
}

_project_dir() {
    local cur subdirs
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    subdirs=`find $project_base_dir -mindepth 1 -maxdepth 1 -type d -printf '%f '`
    COMPREPLY=($(compgen -W "${subdirs}" -- ${cur}))
    return 0
}
complete -F _project_dir project-dir pj