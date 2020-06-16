function generate_backup() {
  crontab -l > mycron
  echo "0 20 * * *  env DOTFILES_PATH='$DOTFILES_PATH' $DOTFILES_PATH/scripts/package/export" >> mycron
  crontab mycron
  rm mycron
}

# test && commit || revert
function tcr() {
  # Information and instructions for trying TCR workflow
  npm test && gca || git revert
}
