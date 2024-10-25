version=0.8.13
apt-get update && apt-get -y upgrade
apt-get install gcc make git -y
wget --no-check-certificate https://github.com/ulanneche/3proxy/raw/refs/heads/master/archive/3proxy-0.8.9.tar.gz
tar xzf 3proxy-${version}.tar.gz
cd 3proxy-${version}
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://github.com/ulanneche/3proxy/raw/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
mkdir /var/log/3proxy/
wget --no-check-certificate https://github.com/ulanneche/3proxy/raw/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate  https://github.com/ulanneche/3proxy/raw/master/3proxy
chmod  +x /etc/init.d/3proxy
update-rc.d 3proxy defaults
