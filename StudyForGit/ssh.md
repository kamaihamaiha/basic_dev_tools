## 配置 ssh

以 Windows 电脑的 git 客户端配置 gitee 为例


0. 打开 Windows 电脑的 git bash 终端
1. 生成 SSH rsa 密钥
   ```shell
    ssh-keygen -t rsa -C "kamaihamaiha@163.com"
   ```
   - 根据提示操作
 2. 然后在当前用户目录下的 `.ssh` 目录中生成了多个文件：`id_rsa id_rsa.pub known_hosts`
 3. 复制文件 `id_rsa.pub` 内容
 4. 打开 gitee，登录自己的账号，点击进入 SSH公钥，添加 ssh 公钥输入框中，copy 第三步的内容
 5. 然后回到 git bash 的客户端，使用如下命令测试，是否连通：`ssh -T git@gitee.com`
   ```shell
   # 成功的情况
   Hi kk! You've successfully authenticated, but GITEE.COM does not provide shell access.
   ```
