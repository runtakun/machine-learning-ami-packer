#!/bin/sh

sudo yum -y update && sudo yum -y upgrade
sudo yum install -y git gcc

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

pip install numpy
pip install scipy
pip install pandas
pip install matplotlib
pip install ipython
pip install jupyter
pip install pillow
pip install chainer
pip install tensorflow
pip install keras
pip install scikit-learn

jupyter notebook --generate-config
echo -e "c.NotebookApp.ip ='*'\nc.NotebookApp.port = 8888\nc.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
