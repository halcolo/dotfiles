function generate_backup() {
  crontab -l > mycron
  echo "0 20 * * *  env DOTFILES_PATH='$DOTFILES_PATH' $DOTFILES_PATH/scripts/package/export" >> mycron
  crontab mycron
  rm mycron
}

function tcr() {
  # Information and instructions for trying TCR workflow
  npm test && git commit -am "$1" || git reset --hard
}

function cdc() {
  cd ~/projects; cd $1;
}