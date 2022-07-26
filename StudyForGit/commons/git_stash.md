### 切换分支时，暂存本地修改的代码 stash

团队开发时，有多个分支。如果在 feature_1 分支上，正在修改，但是还没改好，不想提交。这时候又需要切换到其他分支，如 dev 分支，只想把在 featuer_1 分支上的改动暂存一下。可用 `git stash`

```shell
// 当前处于 feature_1 上，将本地改动暂存到 栈里
git stash

// 切换到其他分支，做了些事情

// 再次切到分支 feature_1 上
git checkout feature_1

// 显示当前放在栈里的文件
git stash show

// 把刚才暂存的代码取出来
git stash pop

```



