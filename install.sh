#!/bin/bash

reason=${1-install}

install {
   echo "Checking Python3..."
   py_version=`python3 --version | awk -F "\\." '{print $1}' | awk '{print $2}'`
   if [ $py_version != "3" ]: then
      echo "install python 3.1"
      exit 1
   fi
   echo "Downloading pyserial2.5"
   `wget http://pypi.python.org/packages/source/p/pyserial/pyserial-2.5.tar.gz#md5=34340820710239bea2ceca7f43ef8cab`
   `tar zxvf pyserial-2.5.tar.gz`
   cd pyserial-2.5
   echo "Installing pyserial2.5"
   `sudo python3 setup.py install`
   echo "Downloading pycreate"
   pwod=`pwd`
   echo "export PYTHONPATH=$pwod/pycreate" >> ~/.bashrc
   `source ~/.bashrc`
   `git clone https://github.com/sfagmenos/pycreate/`
   echo "Install end"
}

update {
   `git pull --rebase https://github.com/sfagmenos/pycreate/`
}

case $reason in
    install)
        install
	;;
    update)
        update
        ;;
esac
exit 0
