## Ubuntu 使用筆記整理

- 科學上網
- 切換源
- 拼音輸入法
- 安裝常用開發工具


### 科學上網

- Clash for windows 
- setup Network proxy: 
    - enable manual
    - HTTP: 127.0.0.1 7890
    - HTTPs: 127.0.0.1 7890
    - Socks: 127.0.0.1 7890

### 切換源

- 網上很多都說修改這個文件: `/etc/apt/sources.list`
- 然後搞一堆地址

其實不用那麼麻煩

#### easy more

1. Settings
2. About
3. Software update
4. First Tab: Ubuntu softwear
    - change server

#### Tips

- 其實更換了國內的源，有很多工具也無法安裝，會提示找不到。
- 還是科學上網，然後在 terminal 中設置代理地址，直接用 ubuntu 主服務器 爲源靠譜


### 拼音輸入法

- install google pinyin input
```shell
sudo apt install fcitx

sudo apt install fcitx-googlepinyin

im-config

reboot
```

只能湊合用, vscode 中就沒法使用

#### 安裝常用開發工具

- Chrome
- vscode
- config ssh: `ssh-ken`
- vim, git, gcc, 
- zsh
- android studio
- clion

##### Install Chrome

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

##### Install vscode
```
sudo snap install --classic code
```