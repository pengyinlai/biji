准备ansible环境:
0.所有主机提前配置好主机名、IP地址、YUM源、关闭防火墙和SELinux.
1.找一个主机做ansible管理主机,该主机远程所有其他主机不需要密码.
2.在ansible管理主机解压ansible_centos7.tar.gz安装里面的所有软件.
3.解压tar -xf ansible.tar.gz -C /root/,并进入解压的目录cd /root/ansible
4.修改/root/ansible/hosts文件[根据自己的情况修改对应的IP地址]

Day01实验:
执行剧本自动完成LNMP部署Wordpress实验
# cd /root/ansible
# ansible-playbook  day01/lnmp.yml


Day02实验:
lab01、执行剧本完成LNP+Mariadb数据库分离实验
【确认】有一台独立的数据库服务器,并将其IP写入/root/ansible/hosts文件.
【确认】/root/ansible/day02/lab_01.yml文件中最后一行的IP是数据库主机的IP地址.
# cd /root/ansible
# ansible-playbook  day02/lab_01.yml

lab02、执行剧本完成Web服务器集群实验
【确定】/root/ansible/hosts文件中的web1,web2,web3,nfs,haproxy1主机是否存在.
# cd /root/ansible
# ansible-playbook  day02/lab_02.yml


Day03实验:
lab01、Keepalived高可用
【确认有haproxy1和haproxy2主机，查看/root/ansible/hosts】
【注意：haproxy1和haproxy2不可以是同一台主机】
【如果没有haproxy2主机,可以修改day03/lab_01.yml文件，修改远程目标主机
# cd /root/ansible
# ansible-playbook day03/lab_01.yml
