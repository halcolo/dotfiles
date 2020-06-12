function generate_backup() {
  crontab -l > mycron
  echo '0 20 * * *  /bin/zsh "$DOTFILES_PATH/scripts/package/export"' >> mycron
  crontab mycron
  rm mycron
}