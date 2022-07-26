## 终端使用

- 1- 快捷键
- 2- zsh
- 3- 以 root 身份登陆 shell
- 4- 用文本编辑（系统自带）打开文件
- 5- 查看已经安装的 shell 
- 6- 设置终端的默认 shell 类型

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



