#cd ~/csh
#git clone https://github.com/p4lang/behavioral-model.git
# cd ../behavioral-model
# ./install_deps.sh
# ./autogen.sh
# ./configure
# make
# sudo make install
# sudo ldconfig
#for thrift
wget http://ftp.debian.org/debian/pool/main/a/automake-1.15/automake_1.15-3_all.deb
sudo dpkg -i automake_1.15-3_all.deb

wget http://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.gz                                                                      tar xvf boost_1_60_0.tar.gz
cd boost_1_60_0
./bootstrap.sh
sudo ./b2 install