#!/bin/bash
# Assumes it is used within Cmder/ConEmu. If used within git-bash, remove the lines starting with ConEmuC.
# Configure it in sections "Variables" and "Machine mapping".

# Variables
base_path="/d/Eigenes/identity"
machines="example1 example2"

function login() {
    local machine=$1
    local host user identity

    # Machine mapping
    case "${machine}" in
    example1)
        host=example1.com
        user=user1
        identity=example1.pem
        ;;
    example1)
        host=example2.com
        user=user2
        identity=example2.pem
        ;;
    *)
        printf "Unknown machine '%s'. Available machines: %s\\n" "${machine}" "$machines"
        return
        ;;
    esac
    
    ConEmuC -Silent -GuiMacro Rename 0 "$machine"
    ssh -l $user -i $base_path/$identity $host
    ConEmuC -Silent -GuiMacro Rename 0 "git-bash"
}

_login() {
    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    
    COMPREPLY=($(compgen -W "${machines}" -- ${cur}))
    return 0
}

complete -F _login login
