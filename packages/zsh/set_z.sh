#!/bin/sh

if [ -x "$(command -v zsh)" ]; then
    echo 'Zsh is already installed.'
else
    echo 'Installing Zsh'
    sudo apt-get install zsh -y
fi

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo 'Oh-My-Zsh is already installed.'
else
    echo 'Installing Oh-My-Zsh'
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

if [ "$SHELL" = "/bin/zsh" ]; then
    echo 'Zsh is already the default shell.'
else
    echo 'Changing default shell to Zsh'
    chsh -s /bin/zsh
fi

if [ -d "$HOME/.zsh/zsh-autosuggestions" ]; then
    echo 'Zsh-Autosuggestions is already installed.'
else
    echo 'Installing Zsh-Autosuggestions'
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc
fi

if [ -x "$(command -v fc-list)" ] && fc-list | grep -q "FiraCode"; then
    echo 'Fira Code font is already installed.'
else
    echo 'Installing Fira Code font'
    sudo apt install fonts-firacode -y
fi

if grep -q "ZSH_THEME=\"node\"" "$HOME/.zshrc"; then
    echo 'Node theme is already set.'
else
    echo 'Setting Node theme'
    wget -O ~/.oh-my-zsh/themes/node.zsh-theme https://raw.githubusercontent.com/skuridin/oh-my-zsh-node-theme/master/node.zsh-theme
    sed -i 's/.*ZSH_THEME=.*/ZSH_THEME="node"/g' ~/.zshrc
fi

source ~/.zshrc

echo 'Zsh version:'
zsh --version
echo 'Oh-My-Zsh version:'
echo $(cd $HOME/.oh-my-zsh && git describe --abbrev=0 --tags)
