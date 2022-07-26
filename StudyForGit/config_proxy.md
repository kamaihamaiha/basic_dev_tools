### 配置代理，更快的访问提交代码到 GitHub



不管是 终端提交还是 SourceTree 提交，如果没有设置代理，提交 GitHub 会很慢。



**设置代理**

```shell
// 我的代理地址是 http://127.0.0.1:7890
git config --global https.proxy http://127.0.0.1:7890
git config --global http.proxy http://127.0.0.1:7890
```



**如何知道代理地址？**

我的梯子是 ClashX，提供了一个功能：复制终端代理命令，复制后如下：

```shell
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
```



如果在终端执行，则只能在当前终端 git push 提交代码到 GitHub。下次提交还需要执行，很麻烦。而且用 **source tree** 操作也不行，因此直接干脆设置全局的代理。



**取消设置的代理：**

```shell
git config --global --unset http.proxy 
git config --global --unset https.proxy 
```

