# First pair: veth0-veth1
sudo ip link add name veth0 type veth peer name veth1
sudo ip link set dev veth0 up
sudo ip link set dev veth1 up
sudo ip link set veth0 mtu 9500
sudo ip link set veth1 mtu 9500
sudo sysctl net.ipv6.conf.veth0.disable_ipv6=1
sudo sysctl net.ipv6.conf.veth1.disable_ipv6=1

# Second pair: veth2-veth3
sudo ip link add name veth2 type veth peer name veth3
sudo ip link set dev veth2 up
sudo ip link set dev veth3 up
sudo ip link set veth2 mtu 9500
sudo ip link set veth3 mtu 9500
sudo sysctl net.ipv6.conf.veth2.disable_ipv6=1
sudo sysctl net.ipv6.conf.veth3.disable_ipv6=1

# Second pair: veth4-veth5
sudo ip link add name veth4 type veth peer name veth5
sudo ip link set dev veth4 up
sudo ip link set dev veth5 up
sudo ip link set veth4 mtu 9500
sudo ip link set veth5 mtu 9500
sudo sysctl net.ipv6.conf.veth4.disable_ipv6=1
sudo sysctl net.ipv6.conf.veth5.disable_ipv6=1
 
sudo ifconfig veth0 192.168.1.100 netmask 255.255.255.0 up
sudo ifconfig veth1 192.168.1.200 netmask 255.255.255.0 up
sudo ifconfig veth2 192.168.1.300 netmask 255.255.255.0 up
sudo ifconfig veth3 192.168.1.400 netmask 255.255.255.0 up
sudo ifconfig veth4 192.168.1.500 netmask 255.255.255.0 up
sudo ifconfig veth5 192.168.1.600 netmask 255.255.255.0 up
 

#3. activate rdma
modprobe -r mlxn5_core
modprobe rdma_rxe
sudo rdma link add rxe_0 type rxe netdev veth0
sudo rdma link add rxe_1 type rxe netdev veth1
sudo rdma link add rxe_2 type rxe netdev veth2
sudo rdma link add rxe_3 type rxe netdev veth3
sudo rdma link add rxe_4 type rxe netdev veth4
sudo rdma link add rxe_5 type rxe netdev veth5

 
rdma link
ibv_devices
#server
ib_send_bw -d (rxe_4)
# client 
ib_send_bw -d (rxe_0) 192.168.1.500
