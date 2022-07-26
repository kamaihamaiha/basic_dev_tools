## Git 版本控制管理

### 第三章 入门

#### 摘要

1. **提交**
2. **差异**
3. **删除和重命名**
4. **仓库副本**
5. **配置文件**



1. **查看提交**
```bash
 #查看单独提交的历史
 git log

 #查看特定提交的详细信息
 git show 提交码

 #查看当前开发分支简洁的单行摘要, 默认只列出最新的提交
 git show-branch 

 #查看当前开发分支简洁的单行摘要，展示 7 个
 git show-branch --more=7
```

2. **查看提交差异**
```bash
 git diff commitID1 commitID2
```

3. **删除和重命名**
```
# 删除
git rm target_file

# 提交
git commit -m "Removed target_file"

# 重命名
git move foo.html bar.html

# 提交
git commit -m "Moved foo.html to bar.html"

//===//
# 删除 .idea 文件夹
[操作视频](https://www.youtube.com/watch?v=zm8CTvROeU4)
```

4. **创建文件库副本**
```
# 本地已经有一个版本库，可以用 clone 创建副本
git clone old_repository new_repository

# 查看两个版本库差别
diff -r ole_repository new_repository
```

5. **配置文件**
  Git 支持不同层次的配置文件，按照优先级递减的顺序

  - .git/config
  - ~/.gitconfig
  - /etc/gitconfig 或者/usr/local/etc/gitconfig

  

  1. .git/config

      是版本库（当前）特定的配置设置，可用 --file 选项修改，是默认选项。这些设置拥有最高优先级

  2. ~/.gitconfig

      是用户特定的配置设置，可用 --global 选项修改

  3. /etc/gitconfig

      是系统范围内的配置设置，如果有它的 UNIX 文件写权限，可用 --system 选项修改它。这些设置优先级最低

  4. 配置作者名和 E-mail 地址

     ```
     #作用范围：所有版本库
     git config --global user.name "Lucy"
     git config --global user.emial "lucy@163.com"
     
     #作用范围：某一个版本库，覆盖 --global 的设置
     git config user.name "Lucy"
     git config user.emial "lucy@163.com"
     ```

  5. 列出整租配置文件里共同查找的所有变量的设置值

     ```
     git config -l
     ```

  6. 移除设置

     ```
     #移除设置的E-mail
     git config --unset user.email
     ```



---

### 第 4 章 基本的 Git 概念





