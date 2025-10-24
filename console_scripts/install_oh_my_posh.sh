OS="$(uname -s)"
SHELL_NAME="$(basename "$SHELL")"

echo "Detected OS: $OS"
echo "Detected shell: $SHELL_NAME"

THEME_PATH="$HOME/.poshthemes"

# Download themes
mkdir "$THEME_PATH"
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O $THEME_PATH/themes.zip
unzip "$THEME_PATH/themes.zip" -d $THEME_PATH
chmod u+rw $THEME_PATH/*.json
rm $THEME_PATH/themes.zip

if [[ "$SHELL_NAME" == "bash" ]]; then
  CONFIG_FILE="$HOME/.bashrc"

  INIT_CMD='eval "$(oh-my-posh init bash --config '"$THEME_PATH/negligible.omp.json"')"'
  curl -s https://ohmyposh.dev/install.sh | sudo bash -s
elif [[ "$SHELL_NAME" == "zsh" ]]; then
  brew install jandedobbeleer/oh-my-posh/oh-my-posh
  CONFIG_FILE="$HOME/.zshrc"
  INIT_CMD='eval "$(oh-my-posh init zsh --config '"$THEME_PATH/negligible.omp.json"')"'
else
  echo "Unsupported shell: $SHELL_NAME. Please configure manually."
  exit 1
fi
  
# Avoid duplicate entries
if ! grep -q "oh-my-posh init" "$CONFIG_FILE"; then
  # put the configuration in the source
  echo "$INIT_CMD" >> "$CONFIG_FILE"
  echo "Added oh-my-posh init command to $CONFIG_FILE"
else
  echo "oh-my-posh init command already present in $CONFIG_FILE"
fi

# Reload shell config
echo "Reloading shell configuration..."


source "$CONFIG_FILE"

if [[ "$SHELL_NAME" == "zsh" ]]; then
  exec zsh
fi

echo "✅ oh-my-posh installation complete for $SHELL_NAME on $OS."
