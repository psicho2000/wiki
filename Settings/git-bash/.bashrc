alias wiki='cd /d/Eigenes/Prog/Code/Java_2015/wiki'
alias training='cd /d/Eigenes/Prog/Code/Java_2015/workspaces/training'
alias redmine='cd /d/Eigenes/Prog/Code/Java_2015/workspaces/redmine-protocol'
alias busybox='docker run -it --rm busybox'
alias debian='docker exec -it debian'
alias d='docker'
alias dc='docker-compose'
alias log="docker-compose logs -f"
alias dps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}'"
alias de="docker-exec"
alias dce="docker-compose-exec"
alias dcu="docker-compose-update"
docker-exec() {
    winpty docker exec -it "$1" bash
}
docker-compose-exec ()
{
    winpty docker-compose exec "$1" bash
}
function docker-compose-update() {
    docker-compose stop "$*"
    docker-compose pull "$*"
    docker-compose up -d "$*"
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