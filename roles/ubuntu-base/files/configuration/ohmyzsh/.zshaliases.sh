# zsh
alias oms='vim ~/.zshaliases'
alias ome='vim ~/.zshenv'
alias omc="background $COMMAND_INTELLIJ $HOME/ubuntu-os-setup"
# reset shell (after changing aliases or stuff like that)
alias res='exec zsh -l && clear'

# standard Unix command aliases
alias egr='env | grep '
alias agr='alias | grep '
alias l='ls -trlah'
alias lc='l -1 | wc -l'
alias rm='rm -rf'
alias mkd='mkdir -p '
# get the complete path to a file
alias rp='realpath '
alias t='touch '
alias psa='ps aux | grep '
# copy latest command to clipboard
alias cpc='echo "!!" | xclip -sel clip'
alias lfs='du -ah . | sort -rh'
# find in current folder for file names
alias fh='find . 2>/dev/null | grep '
# find in current folder for file content
alias fch='grep  --color=auto --exclude-dir="**/target" --exclude-dir="**/node_modules" --exclude-dir="**/dist"  -R '
# generate file with 5MB size
alias gf='truncate -s 5M '
# run a commmand multiple times
alias t10='for t in {1..10}; do ""; done'
alias t50='for t in {1..50}; do ""; done'
alias eho='sudo vim /etc/hosts'


# package installation
alias ain='sudo apt install -y '
alias are='sudo apt remove '
alias aup='sudo apt update'
alias aug='sudo apt upgrade'
alias sni='sudo snap install '

# system services
alias sru='systemctl start '
alias sst='systemctl status '
alias spa='systemctl stop '
alias srs='systemctl restart '

# system
alias shn='shutdown -h now'
alias shr='sudo reboot'
alias lgo='gnome-session-quit'

# network
alias nelpo='netstat -tulpn'
alias neltr='netstat -nputw'
alias nerpo='nc -vz '
alias vps='sudo openvpn --config $HOME/Documents/work.ovpn'
alias nee='nmcli radio wifi off && sudo ifconfig enp0s31f6 up'
alias new='nmcli radio wifi on && sudo ifconfig enp0s31f6 down'

# git
# get current branch
alias gbc='git branch | grep \* | cut -d " " -f2'
alias gpf='git push --force'
alias gcom='git add --all && git commit -m '
alias gcomd='git add --all && git commit -m "`date`"'
alias gcob='git checkout -t '
# revert last commit commit
alias grc='git reset HEAD~1'
alias gccl='git rev-parse HEAD'
# special commits
alias gvc='git add --all && git commit -m "version: use latest version"'
# git main branch clean
alias gmb="git remote show origin | sed -n '/HEAD branch/s/.*: //p'"
alias gdc='gfa && git checkout $(gmb) && git pull'

# github
alias gpr='github-pull-request.sh $(basename $(dirname $PWD)) $(git rev-parse --show-toplevel | rev | cut -d'/' -f 1 | rev) $(git rev-parse --abbrev-ref HEAD)'

# UI (ubuntu)
alias dils='xrandr -d :0 -q'
alias dioff='xrandr --output HDMI-2 --off'
alias dion='xrandr --output HDMI-2 --auto'

# kubernetes
alias kb='kubectl'
alias kbg='kubectl get'

# docker aliases
alias dpr='docker container prune && docker images purge'
alias dpra='docker system prune -f'
alias dkc='docker rm -f $(docker ps -q -a)'
alias dki='docker rmi $(docker images -q)'
alias dkid='docker rmi -f $(docker images -f "dangling=true" -q)'
alias dcl='docker container ls'
alias dcla='docker container ls -a'
alias dil='docker image ls'
alias dila='docker image ls -a'
alias drm='docker rm -f '
alias dst='docker stop '
alias drs='docker restart '
alias dex='docker exec -i -t '
alias dpu='docker pull '
alias dlo='docker logs -f '
alias dvoc='docker volume create --name '
alias dvoi='docker volume inspect '

# docker run container for current directory image / container name
alias dbc='docker build -t ${PWD##*/} .'
alias dsc='docker run -d --rm --name ${PWD##*/} -p 9080:9080 -p 9443:9443 -p 9043:9043 -p 9060:9060 -p 8080:8080 -p 8443:8443 -p 7777:7777  ${PWD##*/} '
alias drc='docker rm -f ${PWD##*/}'
alias dcc='docker cp . ${PWD##*/}:/tmp/${PWD##*/}'
alias dlc='docker logs -f ${PWD##*/}'
alias dexc='docker exec -i -t ${PWD##*/} bash'
alias drsc='docker restart ${PWD##*/}'
alias dstc='docker stop ${PWD##*/}'
alias druc='docker start ${PWD##*/}'

# docker run container here
alias dsh='docker run -d --rm --name ${PWD##*/} -p 9080:9080 -p 9443:9443 -p 9043:9043 -p 9060:9060 -p 8080:8080 -p 8443:8443 -p 7777:7777 '
alias dshe='docker run -i -t --rm --name ${PWD##*/} -p 9080:9080 -p 9443:9443 -p 9043:9043 -p 9060:9060 -p 8080:8080 -p 8443:8443 -p 7777:7777 '
alias dvh='docker run -u $(id -u ${USER}):$(id -g ${USER})  -d --rm --name ${PWD##*/} -p 9080:9080 -p 9443:9443 -p 9043:9043 -p 9060:9060 -p 8080:8080 -p 8443:8443 -p 7777:7777 -v $(pwd):/tmp/mapped '
alias dvhe='docker run -u $(id -u ${USER}):$(id -g ${USER}) -i -t --rm --name ${PWD##*/} -p 9080:9080 -p 9443:9443 -p 9043:9043 -p 9060:9060 -p 8080:8080 -p 8443:8443 -p 7777:7777 -v $(pwd):/tmp/mapped '

# docker compose
alias dcd='docker compose down'
alias dcu='docker compose up -d'
alias dcur='docker compose up -d --force-recreate'

# maven
alias mvci='mvn clean install'
alias mvcist='mvn clean install -DskipTests'
alias mvcp='mvn clean package'
alias mvi='mvn install'
alias mvv='mvn verify'
alias mvist='mvn install -DskipTests'
alias mvp='mvn package'
alias mvpst='mvn package -DskipTests'
alias mvcpst='mvn clean package -DskipTests'
alias mvt='mvn test'
alias mvc='mvn clean '
alias mvo='mvn compile '
alias mvd='mvn deploy'
alias mvcd='mvn clean deploy'
alias mvdst='mvn deploy -DskipTests'
alias mvf='mvn com.coveo:fmt-maven-plugin:format'
alias mvsr='mvn spring-boot:run'
alias mvsrl='mvn spring-boot:run -Dspring-boot.run.profiles=local'
alias mvdt='mvn dependency:tree'
alias mves="$COMMAND_INTELLIJ $HOME/.m2/settings.xml"

# java
alias jjh='java -jar target/*.jar'
alias je8='jenv global 1.8 && res'
alias je11='jenv global 11.0 && res'

# python
alias pse='python3 -m venv env'
alias ppe='source env/bin/activate'
alias pin='pip3 install -r dev-requirements.txt'
alias pte='ppe && pytest'
alias pli="ppe && pylint ${PWD##*/}"

# node, npm
alias nci='npm ci'
alias nin='npm install '
alias nun='npm uninstall '
alias nind='npm install --save-dev '
alias ning='npm install --location=global '
alias nung='npm uninstall --location=global '
alias nru='npm run '
alias nst='npm run start'
alias nsto='npm run start -- --open'
alias nco='npm run commit'
alias nte='npm run test'
alias nbu='npm run build'
alias nli='npm run lint'
alias ne2='npm run e2e'
alias nde='npm run deploy'
alias nfo='npm run format'

# angular
alias ngcl='rm -rf package-lock.json && rm -rf node_modules && rm -rf dist'
alias ngre='rm -rf node_modules && rm -rf dist'

# nx
alias nxb='npm run affected:build'
alias nxe='npm run affected:e2e'
alias nxl='npm run affected:lint'
alias nxt='npm run affected:test'
alias nxgr='nx dep-graph'
alias nxgc='nx g @schematics/angular:component --project '
alias nxw='npx create-nx-workspace'

# open current directory in tools
alias fic="background $COMMAND_FINDER ."
alias inc="background $COMMAND_INTELLIJ ."

# extracting
alias zi='zip -r content.zip '
alias uzz='unzip *.zip -d zip && cd zip && lfs'
alias uzj='unzip *.jar -d jar && cd jar && lfs'
alias uze='unzip *.ear -d ear && cd ear && lfs'
alias uzw='unzip *.war -d war && cd war && lfs'
alias uzr='unzip *.rar -d rar && cd rar && lfs'
alias uzt='mkdir -p tar && tar -xf *.tar -C tar && cd tar && lfs'

# navigation
alias -g did='$HOME/Downloads/'
alias -g dir='$HOME/repos/'
alias -g dic='$HOME/Documents/'
alias -g dit='/tmp'
alias -g dio='$OLDPWD'

# special directories
alias d1='cd $DIRECTORY_1'
alias d2='cd $DIRECTORY_2'
alias d3='cd $DIRECTORY_3'
alias d4='cd $DIRECTORY_4'
alias d5='cd $DIRECTORY_5'

# remote host navigation
alias sh1='ssh $USER_1@$HOST_1'
alias sh2='ssh $USER_2@$HOST_2'
alias sh3='ssh $USER_3@$HOST_3'
alias sh4='ssh $USER_4@$HOST_4'
alias sh5='ssh $USER_5@$HOST_5'

# global aliases
alias -g G='| grep '
alias -g L='| less '
alias -g C='| xclip -sel clip'
alias -g V='--version'
alias -g H='--help'
alias -g F='| head -'
alias -g W='--watch '
alias -g NP='-- --prod '
alias -g VB='--verbose '
alias -g A='| xargs -L 1 '
alias -g CU='| cut -d " " -f1'

# suffix aliases
alias -s {pdf,PDF,mp4,MP4,html,HTML,gif,GIF}='background google-chrome'
alias -s {jpg,JPG,jpeg,JPEG,png,PNG}='background eog'
alias -s {zip,ZIP,war,WAR,ear,EAR,jar,JAR}='unzip -l'
alias -s {xlsx,XLSX,docx,DOCX,csv,CSV}='background libreoffice'

background() {
    $@ >/dev/null 2>/dev/null &
}
