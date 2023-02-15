if [ -f ~/.bash_profile ] ; then
    mv $HOME/.bash_profile $HOME/.bash_profile.bak
fi
cp $HOME/console_template/.bash_profile $HOME/.bash_profile
if [ -f ~/.bashrc ] ; then
    mv $HOME/.bashrc $HOME/.bashrc.bak
fi
cp $HOME/console_template/.bashrc $HOME/.bashrc
if [ -f ~/.tmux.conf ] ; then
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi
cp $HOME/console_template/.tmux.conf $HOME
if [ -d ~/.bash-git-prompt ] ; then
    rm -rf $HOME/.bash-git-prompt
fi
cp -r $HOME/console_template/.bash-git-prompt $HOME/.bash-git-prompt
