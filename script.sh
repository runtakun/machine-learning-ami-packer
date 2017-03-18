#!/bin/sh

sudo yum -y update && sudo yum -y upgrade
sudo yum install -y git

cd /tmp
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

pyenv install anaconda3-4.3.0
pyenv rehash
pyenv global anaconda3-4.3.0

echo 'alias activate="source $PYENV_ROOT/versions/anaconda3-4.3.0/bin/activate"' >> ~/.bashrc
source ~/.bashrc

conda install pandas
conda install ipython
conda install jupyter
conda install pillow
