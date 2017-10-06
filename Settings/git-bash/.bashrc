alias wiki='cd /d/Eigenes/Prog/Code/Java_2015/wiki'
alias training='cd /d/Eigenes/Prog/Code/Java_2015/workspaces/training'
alias redmine='cd /d/Eigenes/Prog/Code/Java_2015/workspaces/redmine-protocol'
alias busybox='docker run -it --rm busybox'
alias debian='docker exec -it debian'
alias d='docker'
alias dc='docker-compose'
alias log="docker-compose logs -f"
de() {
    winpty docker exec -it "$1" bash
}
push_wiki() {
    priv
    cd /d/Eigenes/wiki
    git commit -am "$1"
    git push
    team
}

# Set directory colors
eval `dircolors ~/.dircolors`