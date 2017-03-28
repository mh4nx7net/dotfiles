cp ~/.vimrc ..
rsync --exclude-from 'exclude.txt' ~/.config/sublime-text-3/Packages/User ../sublime-text-3/Packages -avr
cp ~/.tmux.conf ..
cp ~/.bashrc ..
cp ~/template.tex .
cp ~/update.sh .
## apt sources
cp /etc/apt/sources.list ../apt/
cp /etc/apt/preferences ../apt/
# cp /etc/apt/preferences.d/01_release ../apt

cd ..
# push changes
git add .
git commit -m 'auto-commit-'$(date +%H%M%S%d%m%Y)
# TODO: a better looking /more descriptive commit name
git push
