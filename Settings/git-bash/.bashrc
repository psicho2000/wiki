alias busybox='docker run -it --rm busybox'
alias d='winpty docker'
alias dc='winpty docker-compose'
alias dce='docker-compose-exec'
alias dcl='winpty docker-compose logs -f'
alias dcu='docker-compose-update'
alias de='docker-exec'
alias debian='docker exec -it debian'
alias di='docker-inspect'
alias dps='docker-ps-format'
alias dpsn='docker-ps-format-sort-by-name'
alias ll='ls -lAh'
alias log='winpty docker-compose logs -f'
alias redmine='cd /d/Eigenes/Prog/Code/Java_2015/workspaces/redmine-protocol'
alias training='cd /d/Eigenes/Prog/Code/Java_2015/workspaces/training'
alias wiki='cd /d/Eigenes/Prog/Code/Java_2015/wiki'

function explain() {
    alias_result=$(alias $1 2>&1)
    if [[ ! $alias_result =~ "not found" ]]; then
        echo $alias_result
        alias_part=${alias_result#*\'}
        alias_part=${alias_part:0:${#alias_part}-1}
        declare -f $alias_part
    fi
    declare -f $1
}
function docker-compose-exec ()
{
    winpty docker-compose exec "$1" bash
}
function docker-compose-update() {
    winpty docker-compose stop $*
    winpty docker-compose pull $*
    winpty docker-compose up -d $*
}
function docker-exec() {
    winpty docker exec -it "$1" bash
}
function docker-inspect() {
  docker ps|grep $1|awk -F'[[:space:]]+' '{print $1}'|xargs docker inspect|less
}
function docker-ps-format() {
    docker ps $* --format 'table {{.ID}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}'
}
function docker-ps-format-sort-by-name() {
    docker-ps-format $*|awk 'NR<2{print $0;next}{print $0| "sort -k2"}'
}
function push_wiki() {
    priv
    wiki
    git commit -am "$1"
    git push
    team
}

# Set directory colors
eval `dircolors ~/.dircolors`
. ~/.docker-compose-completion.sh
