### Git 常见操作

---

- [大文件 LFS 问题](./lfs/readme.md)

- [撤销某次提交](https://juejin.cn/post/7051024177519656967)

- 重新设置远程仓库地址

  `git remote set-url origin 远程地址`

- [git pick](./pick.md)

- [本地仓库强制重置到和远程服务器版本一样](./force_sync_remote.md)

- [切换分支时，暂存本地修改的代码 stash](./git_stash.md)

- [`git branch -r` 依然能看到很多远程已经删除的分支](./del_remote_deleted_branchs.md)

- 身份验证失败，清除秘密缓存

  `git config --system --unset credential.helper`

- Windows 下，pull GitHub 的代码，需要设置终端网络代理（如果已经可以科学上网了）

  ```
  // 设置 CMD Http 代理（临时代理方案）
  set http_proxy=http://127.0.0.1:50015
  set https_proxy=http://127.0.0.1:50015
  ```

  