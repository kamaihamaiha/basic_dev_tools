## 终端使用

- 1- 快捷键
- 2- zsh
- 3- 以 root 身份登陆 shell
- 4- 用文本编辑（系统自带）打开文件
- 5- 查看已经安装的 shell 
- 6- 设置终端的默认 shell 类型
- 配置 Android studio、CLion 等命令，可以在终端中直接打开项目
- 执行脚本报错了

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


### 执行脚本报错了

mac 上，执行一个 Alias （指向了一个Android工程的打包脚本 publish_android_ci），报错了：
"publish_android_ci" cannot be opened because it is from an unidentified developer.

MacOs cannot verify that this app is free from malware.

# 解决
这个错误信息表明，macOS 正在阻止您执行 publish_android_ci 脚本，因为它来自一个未识别的开发者。macOS 的安全设置默认只允许来自已识别开发者的应用程序或脚本运行。
```shell
# 使用 xattr 移除安全性限制：
xattr -d com.apple.quarantine /path/to/publish_android_ci
```
- 将 /path/to/publish_android_ci 替换为实际的脚本路径。

#### xattr

`xattr` 是 macOS 和其他 UNIX 系统上用于管理文件扩展属性（extended attributes）的命令行工具。扩展属性是文件系统中的元数据，可以存储关于文件的额外信息，这些信息不属于文件的标准属性（如权限、所有者、大小等）。在 macOS 中，xattr 通常用于管理与文件安全相关的元数据，例如下载文件的“隔离”标志（quarantine flag）。

当您从互联网下载一个文件时，macOS 会自动给该文件打上一个“隔离”标志。这一标志告诉系统，这个文件来自一个不可信的来源，并且在您第一次尝试打开它时会提示安全警告。通过 xattr，您可以查看、添加、修改或删除这些扩展属性。

