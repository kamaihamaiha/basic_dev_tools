## 终端使用

- 1- 快捷键
- 2- zsh
- 3- 以 root 身份登陆 shell
- 4- 用文本编辑（系统自带）打开文件
- 5- 查看已经安装的 shell 
- 6- 设置终端的默认 shell 类型
- 配置 Android studio、CLion 等命令，可以在终端中直接打开项目

---

### 1. 快捷键

- [官方文档](https://support.apple.com/zh-cn/guide/terminal/trmlshtcts/mac)

### 2. zsh

如果是 Catalina 版本，系统的默认 shell 是 zsh； 当前用户对应的环境变量配置文件：~/.zshrc

- [配置 oh-my-zsh](./oh-my-zsh.md)

### 3. 以 root 身份登陆 shell

打开命令行，输入：`sudo -i`

### 4. 用文本编辑（系统自带）打开文件

1. 打开 Terminal

2. open -e 目标文件

### 5. 查看已经安装的 shell 

```
# 打开终端，输入
cat /etc/shells
```

### 6. 设置终端的默认 shell 类型

```shell
# 这里假如设置默认 shell 为 zsh。后面是目标 shell 的路径，根据实际查询结果输入
chsh -s /bin/zsh
```


### 配置 Android studio、CLion 等命令，可以在终端中直接打开项目

先确定下自己IDE 启动文件位置; 「访达」「应用程序」「某个IDE」「鼠标右键，在弹出的菜单中点击: 进入终端」; 以 Android studio 为例:

打开终端后，路径为: ``/Applications/Android Studio.app`` , 然后进入 ``Android Studio.app cd Contents/MacOS`` 路径，该路径下
有可执行文件: ``studio``; 将此路径配置到环境变量中即可;

[具体可见](https://stackoverflow.com/questions/35363546/open-androidstudio-project-from-command-line-on-osx)

其他程序可依照这种方式修改;



