rm -rf ~/.vim/bundle/*
cd ~/.vim/bundle
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/Yggdroot/indentLine.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/christoomey/vim-tmux-navigator.git
git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --all
