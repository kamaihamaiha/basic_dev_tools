### `git branch -r` 查看分支，依然有很多远程被删除的分支



解决办法：

`git remote prune origin`

举例，如下：

```shell
git remote prune origin
修剪 origin
URL：ssh://git@corp.frdic.com:301/ting/android.git
 * [已删除] origin/adapt_oppo_wear
 * [已删除] origin/bugfix
 * [已删除] origin/bugfix_anglemark
 * [已删除] origin/bugfix_badge-count
 * [已删除] origin/bugfix_channel_img_radio
 * [已删除] origin/bugfix_checkin
 * [已删除] origin/bugfix_color
 ...
```

再次查询 `git branch -r` 就只有远程还存在的分支了.

