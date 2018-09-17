#! /bin/bash
yum -y groupinstall "Development tools"
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
yum -y install wget lrzsz nano nc telnet httpd ntp mod_ssl readline-devel openssl-devel
yum -y install cyrus-sasl-lib.x86_64 cyrus-sasl-devel.x86_64 libgsasl-devel.x86_64 saslwrapper-devel.x86_64

cd  /opt/
echo "downlaod python3 "
wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz
echo "python3 download complete"
mkdir -p  /usr/local/python3 
echo "untar  python tar gz"

tar -xvJf  Python-3.6.2.tar.xz -C  /usr/local/
cd  /usr/local/Python-3.6.2
echo "configure"
./configure --prefix=/usr/local/python3 --with-ssl --enable-optimizations

echo "make install"
make && make install

echo "create link"
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3

mkdir ~/.pip
touch ~/.pip/pip.conf
echo [global] >> ~/.pip/pip.conf
echo index-url=https://pypi.douban.com/simple >>  ~/.pip/pip.conf
echo trusted-host=pypi.douban.com >> ~/.pip/pip.conf
pip3 install numpy pandas scipy scikit-learn xgboost tensorflow keras lightgbm
