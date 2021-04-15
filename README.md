# jd-termux
在旧手机上，用nodejs跑京东的签到脚本，魔改自[shuye72/MyActions](https://gitee.com/shuye72/MyActions)

## Termux安装
安卓神器，安装教程详见大神 [国光](https://www.sqlsec.com/2018/05/termux.html)

## 1.下载本项目

```sh
git clone https://github.com/unkaer/jd-termux.git jd
```
下载到 `~/jd` ,因为脚本里目录写死了

## 2.安装必要的包

```sh
cd jd
sh 1.deploy部署.sh
```

## 3.获取自己的cookie

```sh
sh 2.获取cookie.sh
```

## 4.设置一些参数

```
vim 3.设置环境变量.sh
```

参数列表详见 [环境变量说明](https://github.com/unkaer/jd-termux/blob/main/canshushuoming.md)

## 5.手动运行一次查看效果

```sh
./4.单词运行.sh
```

在 `~/jd/logs` 目录下，可以看见运行日志

## 6.设置成定时任务

```sh
cat 5.corn设置定时.sh
```
手动将 `5.corn设置定时.sh` 中的内容 复制到 crontab 设置中（因为权限问题，暂时没找到好的设置方法）

```sh
crontab -e
```
`ctrl+o` 保存； `回车` 确定；`ctrl+x` 退出；
开始定时任务

```sh
crond
```

## 备注
可将 启动定时任务写入 启动

```sh
echo crond >> ~/.bashrc
```