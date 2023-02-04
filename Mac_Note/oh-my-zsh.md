### oh-my-zsh 安装和配置

#### 1. 安装

```shell
# 安装 oh my zsh: https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### 2. 设置 zsh 主题

```shell
# 打开 ~/.zshrc 文件，找到：ZSH_THEME 修改. 比如修改主题为 steeef
```

#### 3. 设置根据实时输入的命令，提示历史命令

使用插件：zsh-autosuggestions

1. 下载插件: `git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
2. 打开 `.zshrc` 在 plugins 中配置，如下：
   ```shell
    plugins=(git zsh-autosuggestions)
   ```
3. 重启终端
4. 测试下：   
![](./imgs/img_0.png)   

