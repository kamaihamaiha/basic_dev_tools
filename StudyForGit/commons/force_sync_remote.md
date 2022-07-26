### 本地仓库强制重置到和远程服务器版本一样



```shell
// 假如是分支 main
git fetch --all
// 远程分支是：origin/main
git reset --hard origin/main
git pull
```

