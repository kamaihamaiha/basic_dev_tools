## 玩转Git三剑客(极客时间): 总共62讲

- [09 探秘.git目录](#09-探秘git目录)
- [10 commit,tree,blob 三个对象之间的关系](#10-committreeblob-三个对象之间的关系)
- 11 小练习: 数一数tree的个数
- 12 分离头指针情况下的注意事项
- [13 进一步理解HEAD和branch](#13-进一步理解head和branch)
- 14 删除不需要的分支
- [15 修改最新的commit的message](#15-修改最新的commit的message) 
- [16 修改老旧的commit的message](#16-修改老旧的commit的message) 
- [17 把连续的多个commit整理成1个](#17-把连续的多个commit整理成1个) 
- [18 把间隔的几个commit整理成1个](#18-把间隔的几个commit整理成1个) 
- [19 比较暂存区和HEAD所含文件的差异](#19-比较暂存区和head所含文件的差异) 
- [20 比较工作区和暂存区所含文件的差异](#20-比较工作区和暂存区所含文件的差异) 
- [21 如何让暂存区恢复成和HEAD的一样](#21-如何让暂存区恢复成和head的一样) 
- [22 如何让工作区的文件恢复和暂存区一样](#22-如何让工作区的文件恢复和暂存区一样) 
- [23 怎样取消暂存取部分文件的更改](#23-怎样取消暂存取部分文件的更改) 
- [24 消除最近的几次提交](#24-消除最近的几次提交) 
- [25 看看不同提交的指定文件差异](#25-看看不同提交的指定文件差异) 
- [26 正确删除文件的方法](#26-正确删除文件的方法) 
- [27 开发中临时加塞了紧急任务怎么处理](#27-开发中临时加塞了紧急任务怎么处理) 
- [28 如何指定不需要git管理的文件](#28-如何指定不需要git管理的文件)
- [29 如何将git仓库备份到本地](#29-如何将git仓库备份到本地)

---
#### 09 探秘.git目录

- .git 目录
    - HEAD 文件
    - config 文件
    - refs 目录
        - heads 目录
        - tags 目录
    - 新学的命令
        - `git branch -v` 查看分支，并且有 commit 信息
        - `git cat-file -t [commit_id]` 查看git object 的类型
        - `git cat-file -p [commit_id]` 查看git object 的内容
- commit,tree,blob 的关系

#### 10 commit,tree,blob 三个对象之间的关系


#### 11 小练习: 数一数tree的个数


#### 12 分离头指针情况下的注意事项


#### 13 进一步理解HEAD和branch
- 学习了新命令:
    - `git checkout -b bugfix master`
        - 在分支 master 的基础上，创建出一个新的分支: bugfix
    - 比较差异:
        - `git diff HEAD HEAD^`: 当前最新的提交和parent提交差异
        - `git diff HEAD HEAD^^`: 当前最新的提交和parent提交的parent条差异
        - `git diff HEAD HEAD~1`: 当前最新的提交和parent提交差异
        - `git diff HEAD HEAD~2`: 当前最新的提交和parent提交的parent条差异

#### 14 删除不需要的分支

#### 15 修改最新的commit的message

``git commit --amend``

#### 16 修改老旧的commit的message

```shell
git rebase -i [要修改的commit 的 parent commit id]
```
然后进入编辑页面；操作后，当前分支的 head 指向的 commit 也会改变
注意: 这个操作是基于自己的分支，或者本地的分支；其他项目成员没有参与这个分支的情况

#### 17 把连续的多个commit整理成1个

``git rebase -i [要修改的commit 的 parent commit id]``

然后进入编辑界面; 注意最新的 commit 前面的 pick 保持不变；后面的都改为 squash

#### 18 把间隔的几个commit整理成1个

- step1: 找到最早的要整理的 commit 的parent commit id
- step2: ``git rebase -i [parent commit id]``
- step3: 进入编辑界面，把间隔的commit连续排列，从上往下第一个 commit 的pick保持不变；后面的都改为 squash

#### 19 比较暂存区和HEAD所含文件的差异
``git diff --cached``

#### 20 比较工作区和暂存区所含文件的差异
- ``git diff``
  - 默认是对仓库中所有的文件比较
  - 如果想比较某个文件，可以指定文件名：``git diff -- fileName``
  - 多个文件: ``git diff -- fileName1 fileName2``

#### 21 如何让暂存区恢复成和HEAD的一样

``git reset HEAD`` 或者 ``git restore --staged fileName``

#### 22 如何让工作区的文件恢复和暂存区一样
``git checkout -- fileName``

#### 23 怎样取消暂存取部分文件的更改
``git reset HEAD -- file1 file2``

#### 24 消除最近的几次提交
``git reset hard commitID``
commitID: 要回退到的 commit 的 id

#### 25 看看不同提交的指定文件差异
- 不同分支的差异: ``git diff branch1 branch2 -- fileName``
  - 不加文件，则为两个分支所有文件的差异
  - 也可以把 branch1 和 branch2 换成分支对应的 commitID

#### 26 正确删除文件的方法
``git rm fileName``

#### 27 开发中临时加塞了紧急任务怎么处理
- ``git stash``
  -  ``git stash apply`` 或者 ``git stash pop``
  - apply 会保留 git stash list 的记录，pop 则不会

#### 28 如何指定不需要git管理的文件

``.gitignore``


#### 29 如何将git仓库备份到本地

常用的传输协议:

- 本地协议1: ``/path/to/repo.git``  哑协议: 传输进度不可见
- 本地协议2: ``file:///path/to/repo.git`` 智能协议
- HTTP(S) 协议: ``http://git-server.com:port/path/to/repo.git``
- SSH 协议: ``user@git-server.com:paht/to/repo.git``

备份仓库:

```shell
# 本地协议；--bare 选项表示克隆的是裸仓库，只有 Git 的元数据
git clone --bare /Users/kk/Codes/android/custom-view/.git custom_ya
克隆到纯仓库 'custom_ya'...
完成。


# 智能协议
git clone --bare file:///Users/kk/Codes/android/custom-view/.git custom_smart.git

克隆到纯仓库 'custom_smart.git'...
remote: 枚举对象中: 14472, 完成.
remote: 对象计数中: 100% (14472/14472), 完成.
remote: 压缩对象中: 100% (6461/6461), 完成.
remote: 总共 14472（差异 7570），复用 10965（差异 5512），包复用 0（来自  0 个包）
接收对象中: 100% (14472/14472), 122.20 MiB | 36.26 MiB/s, 完成.
处理 delta 中: 100% (7570/7570), 完成.

# 从裸仓库中恢复目录和文件
git clone custom_ya ya
正克隆到 'ya'...
完成。
正在更新文件: 100% (2062/2062), 完成.
```

