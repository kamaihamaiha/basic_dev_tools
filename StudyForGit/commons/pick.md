### git cherry-pick

git cherry-pick 可以选择某个分支的一个或者几个 commit 进行操作

```shell
# 在分支 master 中 pick 分支 dev 某个 commit
# 先切换到 master 分支中
# 然后执行如下
git cherry-pick xxx
   
# 在分支 master 中 pick 分支 dev 某个 commit1 commit2 .. commitn
# 左开右闭: 不包括左边
git cherry-pick <start-commit-id>..<end-commit-id>
   
# 左闭右闭
git cherry-pick <start-commit-id>^..<end-commit-id>
```

