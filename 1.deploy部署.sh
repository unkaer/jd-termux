#!/data/data/com.termux/files/usr/bin/bash

pkg install nodejs cronie
npm install
npm audit fix
npm install qrcode-terminal
npm fund
mkdir logs
chmod 777 3.设置环境变量.sh
chmod 777 4.单词运行.sh