#p4c compiler
#git clone --recursive https://github.com/p4lang/p4c.git 
sudo apt-get install -y cmake g++ git automake libtool libgc-dev bison flex libfl-dev libgmp-dev libboost-dev libboost-iostreams-dev libboost-graph-dev llvm pkg-config python python-scapy python-ipaddr python-ply tcpdump doxygen graphviz texlive-full
#protobuf done before
cd ~/csh/dependency/p4c
#mkdir build
cd build
cmake ..
make -j4
make -j4 check
sudo make install
