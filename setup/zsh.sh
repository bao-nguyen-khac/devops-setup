sudo apt-get update
sudo apt-get install zsh -y
zsh --version
chsh -s $(which zsh)
grep zsh /etc/shells
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# ZSH_THEME="powerlevel10k/powerlevel10k"
# plugins=( 
#     # other plugins...
#     zsh-autosuggestions
# )