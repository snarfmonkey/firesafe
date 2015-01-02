#/bin/bash
# FUCK YO TMUX COOOOOOOOOONNNNNNNFFFFFFFFFFF
if [ -z $1 ]; then
  echo "enter server name as argument, dingus"  
  exit 1
fi
SERVER=$1
echo "FUCK YO TMUX CONF!!!!!!!"
scp base-tmux.conf .tmux.conf .vimrc ${SERVER}:/home/asharpe/
ssh -o "StrictHostKeyChecking no" utility@${SERVER} "sudo cp /home/asharpe/base-tmux.conf /etc/tmux.conf"
