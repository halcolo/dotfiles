function generate_backup() {
  crontab -l > mycron
  echo '0 20 * * *  /bin/zsh "$DOTFILES_PATH/scripts/package/export"' >> mycron
  echo '0 18 * * *' gnome-session-quit --force
  crontab mycron
  rm mycron
}

# test && commit || revert
function tcr() {
  # Information and instructions for trying TCR workflow
  npm test && gca || git revert
}
