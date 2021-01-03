# get latest remote repository info
sudo apt update
# update existing packages
sudo apt upgrade
# install all standard linux packages
while read package; do sudo apt install -y "$package"; done <apt-packages

# add gpg keys for different repos
while read url; do curl -fsSL "$url" | sudo apt-key add -; done <apt-repo-keys-external
# add 3rd party apt repositories
while read repo; do sudo add-apt-repository "$repo"; done <apt-repositories-external
# add apt packages from 3rd party repositories
while read package; do sudo apt install -y "$package"; done <apt-packages-external

# add snap packages
while read package; do sudo snap install "$package"; done <snap-packages
# add classic snap packages
while read package; do sudo snap install "$package" --classic; done <snap-packages

# execute custom installations (not provided via default package managers)
for file in $(pwd)/custom-installs/*.sh; do
    bash "$file" -H || exit -1
done

# execute scripts to customize the installations
for file in $(pwd)/postinstall/*.sh; do
    bash "$file" -H || exit -1
done

# add symlinks to home files
# TODO: SYMLINK ALL FILES IN FOLDER WITHOUT SPECIFYING ALL NAMES
ln -s $(pwd)/home-files/.editorconfig $HOME/.editorconfig
ln -s $(pwd)/home-files/.gitconfig $HOME/.gitconfig
ln -s $(pwd)/home-files/.zshaliases.sh $HOME/.zshaliases
ln -s $(pwd)/home-files/.zshenv.sh $HOME/.zshenv
ln -s $(pwd)/home-files/.zshrc.sh $HOME/.zshrc
ln -s $(pwd)/home-files/config $HOME/.ssh/config
