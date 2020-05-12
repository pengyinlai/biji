#!/bin/bash
#执行脚本文件安装nginx
cd /opt
tar -xf nginx-1.12.2.tar.gz
cd nginx-1.12.2/
./configure --with-http_ssl_module 
make && make install
