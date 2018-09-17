# centos7_sogoupinyin


编辑文章
https://pan.baidu.com/s/1uce5mARDBXLIzoyNVoFOow l6s7
https://blog.csdn.net/qq_36416904/article/details/78283616?locationNum=6&fps=1
https://blog.csdn.net/qq_37194598/article/details/81035912

install mysql
yum install -y perl net-tool perl-Module-Install.noarch

sudo rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
sudo yum install -y mysql-server

install wiznote
wget /etc/yum.repos.d/ https://copr.fedorainfracloud.org/coprs/mosquito/wiznote/repo/epel-7/mosquito-wiznote-epel-7.repo

yum install yum-plugin-copr
yum copr enable mosquito/wiznote
yum install wiznote
http://www.yzone.net/blog/37

wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-conf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64//dnf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/python-dnf-0.6.4-2.sdl7.noarch.rpm
yum install python-dnf-0.6.4-2.sdl7.noarch.rpm dnf-0.6.4-2.sdl7.noarch.rpm dnf-conf-0.6.4-2.sdl7.noarch.rpm

yum install -y dnf-0.6.4-2.sdl7.noarch.rpm dnf-conf-0.6.4-2.sdl7.noarch.rpm python-dnf-0.6.4-2.sdl7.noarch.rpm

wget https://dl.senorsen.com/pub/package/linux/add_repo.sh -qO - | sudo sh
sudo dnf install http://dl-http.senorsen.com/pub/package/linux/rpm/senorsen-repo-0.0.1-1.noarch.rpm

上一步成功后
sudo dnf install netease-cloud-music

dnf install copr

install neteasemusic
wget https://pan.baidu.com/s/1o7YpVHS#list/path=%2F%E6%88%91%E7%9A%84%E8%B5%84%E6%BA%90%2F%E8%BD%AF%E4%BB%B6%2Fnetease_music_for_centos&parentPath=%2F%E6%88%91%E7%9A%84%E8%B5%84%E6%BA%90%2F%E8%BD%AF%E4%BB%B6

yum install -y ./libcrypto1.0.0-udeb-1.0.1-5.x86_64.rpm
yum install -y ./netease-cloud-music-1.0.0-2.x86_64.rpm qt5-qtmultimedia x86_64 5.9.2-1.el7

wget -P /etc/yum.repos.d/ https://copr.fedoraproject.org/coprs/jkastner/dnf-plugins-core/repo/epel-7/jkastner-dnf-plugins-core-epel-7.repo && yum install dnf-plugins-core

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf copr enable yelanxin/netease-cloud-music
sudo dnf install netease-cloud-music

install sogoupinyin
yum-config-manager --add-repo=https://copr.fedoraproject.org/coprs/mosquito/myrepo/repo/epel-7/mosquito-myrepo-epel-7.repo
百度云盘的搜狗包 链接：https://pan.baidu.com/s/1uce5mARDBXLIzoyNVoFOow 密码：l6s7

yum install -y sogou...

1.下载搜狗输入法的rpm包，可以去上面那个链接下载，我也保存了一份（pan.baidu.com/s/1c0yR6Ac）。

百度云盘的搜狗包 链接：https://pan.baidu.com/s/1uce5mARDBXLIzoyNVoFOow 密码：l6s7
2.加入epel源，执行yum list epel后发现一个epel-release.noarch。再用yum安装就好了。
3.加入mosquito-myrepo源
mosquito-myrepo是一个私人制作的第三方源，其中包含了fcitx输入法以及基于fcitx的搜狗输入法。
获取root权限后执行

yum-config-manager --add-repo=https://copr.fedoraproject.org/coprs/mosquito/myrepo/repo/epel-7/mosquito-myrepo-epel-7.repo

如果在此不出现错误，将所需要的依赖包安装上就行

4.然后切换到搜狗输入法安装包所在目录，以root权限执行rpm -ivh 安装包名称。这个时候会出现需要安装哪些依赖。幸运的是加入前面两个源后，这些依赖都可以用yum安装了。先用yum查找每个依赖的安装包名称，在用yum安装。
5.再次执行命令安装那个软件包就OK了。
6.配置：
首先关闭gnome-shell 对键盘的监听，然后切换输入法为fcitx:

$ gsettings set org.gnome.settings-daemon.plugins.keyboard active false

在进行本步骤的时候会出现“org.gnome.settings-daemon.plugins.keyboard”的错误，这里没有太大的影响继续下面的命令就行

$ imsettings-switch fcitx
7.最后最好再重启一下系统，用shift就可以切换出搜狗输入法
