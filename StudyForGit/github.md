### GitHub



### 创建 token

- 最新的 token 到期日为 2023-12-31日
- token 存放在自己的腾讯云服务器上

- 注意：要选择 scope

### 如果 token 过期了，如何使用新的 token

- 先在 github 个人信息设置中创建新的 token
- 然后在电脑终端中，使用如下命令：
```shell
$ git config url."https://<token>@github.com/".insteadOf "https://github.com/"
```
    - 其中 token 是新的令牌
    - 输入时不需要加上 <>

