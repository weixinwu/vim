/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


 (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/weixinwu/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"



brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
