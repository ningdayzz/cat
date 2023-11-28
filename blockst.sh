rm -rf runblockspeedtest.x
clear
echo "Chặn speedtest đi mấy cưng"
echo -e ""
sleep 5
sudo apt install iptables-persistent netfilter-persistent
iptables -I INPUT -s www.fast.com -j DROP
iptables -I INPUT -s fast.com -j DROP
iptables -I INPUT -s https://testmy.net -j DROP
iptables -I INPUT -s https://speed.cloudflare.com -j DROP
iptables -I INPUT -s https://www.opensignal.com -j DROP
iptables -I INPUT -s 104.68.65.13 -j DROP  
iptables -I INPUT -s 23.198.103.141 -j DROP
iptables -I INPUT -s 23.41.68.21 -j DROP
iptables -I INPUT -s 23.199.140.37 -j DROP
iptables -I INPUT -s 151.101.66.219 -j DROP
iptables -I INPUT -s 151.101.194.219 -j DROP
iptables -I INPUT -s 151.101.2.219 -j DROP
iptables -I INPUT -s 151.101.130.219 -j DROP
iptables -I INPUT -s 203.119.73.32 -j DROP
iptables -I INPUT -s 23.11.95.132 -j DROP 
iptables -I INPUT -s https://www.opensignal.com -j DROP
iptables -I INPUT -s https://internethealthtest.org -j DROP
iptables -I INPUT -s https://www.bandwidthplace.com -j DROP
iptables -I INPUT -s https://www.speedcheck.org -j DROP
iptables -I INPUT -s https://www.speedtest.net -j DROP
iptables -I INPUT -s https://speedtest.vn -j DROP
iptables -I INPUT -s https://fast.com -j DROP
iptables -I INPUT -s http://speedtest.vnpt.vn -j DROP
iptables -I INPUT -s https://www.speedcheck.org/vi/ -j DROP
iptables -I INPUT -s https://pcmag.speedtestcustom.com -j DROP
iptables -I INPUT -s speedtest.net -j DROP
iptables -I INPUT -s www.speedtest.net -j DROP
iptables -I INPUT -s https://i-speed.vn  -j DROP
iptables -I INPUT -s https://testmy.net -j DROP
iptables -I INPUT -s https://speedtest.telstra.com -j DROP
iptables -I INPUT -s https://www.nperf.com/vi/ -j DROP
iptables -I INPUT -s speedtest.vn -j DROP
iptables -I INPUT -s https://speedof.me -j DROP
iptables -I INPUT -p tcp -m tcp --dport 22 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT
iptables-save  > /etc/iptables/rules.v4
systemctl start netfilter-persistent
systemctl restart netfilter-persistent
systemctl enable netfilter-persistent
systemctl status netfilter-persistent
clear
echo " Chặn speedtest vì một môi trường xanh sạch và đẹp"
echo -e ""
sleep 3
clear
