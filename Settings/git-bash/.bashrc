# Includes
. ~/.fzf-completion.sh # requires https://github.com/junegunn/fzf/
. ~/.project_dir_completion.sh # requires configuration
. ~/.login.sh # requires configuration

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~' # `cd` is probably faster to type though
alias -- -='cd -'

alias busybox='docker run -it --rm busybox'
alias d='winpty docker'
alias dc='winpty docker-compose'
alias dce='docker-compose-exec'
alias dcl='winpty docker-compose logs -f --tail 500'
alias dcu='docker-compose-update'
alias de='docker-exec'
alias debian='docker exec -it debian'
alias desktop='cd /d/Eigenes/Desktop'
alias di='docker-inspect'
alias dps='docker-ps-format'
alias dpsn='docker-ps-format-sort-by-name'
alias g='./gradlew' # requires gradle and gradle wrapped projects
alias ll='ls -lAh --group-directories-first'
alias redmine='cd $project_base_dir/redmine-protocol'
alias reload='exec bash -l'
alias training='cd $project_base_dir/training'
alias wiki='cd /d/Eigenes/Prog/Code/Java_2015/wiki'

function docker-compose-exec() {
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
function push_wiki() {
    priv
    wiki
    git commit -am "$1"
    git push
    team
}

# Set directory colors
eval `dircolors ~/.dircolors`
