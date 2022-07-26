### 删除之前输入的密码



1. Git config --list

   ```shell
   credential.helper=osxkeychain // 有这项，要删除
   user.name=kk
   user.email=kamaihamaiha@gmail.com
   core.autocrlf=input
   core.quotepath=false
   core.excludesfile=/Users/kk/.gitignore_global
   http.postbuffer=524288000
   http.proxy=http://127.0.0.1:7890
   ...
   ```

2. 查看 git 设置

   ```
   cat ~/.gitconfig
   ```

   得到如下：

   ```shell
   [user]
   	name = kk
   	email = kamaihamaiha@gmail.com
   [core]
   	autocrlf = input
   	quotepath = false
   	excludesfile = /Users/kk/.gitignore_global
   [http]
   	postBuffer = 524288000
   	proxy = http://127.0.0.1:7890
   [difftool "sourcetree"]
   	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
   	path = 
   [mergetool "sourcetree"]
   	cmd = /private/var/folders/y6/7b86wqln2wg1b17w_nd6kt380000gn/T/AppTranslocation/4BB0FFC5-412A-4744-81F3-41C7201BE7E5/d/Sourcetree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
   	trustExitCode = true
   [filter "lfs"]
   	process = git-lfs filter-process
   	required = true
   	clean = git-lfs clean -- %f
   	smudge = git-lfs smudge -- %f
   [commit]
   	template = /Users/kk/.stCommitMsg
   [credential]						//这个配置要删除！！！
   	helper = osxkeychain
   [https]
   	proxy = http://127.0.0.1:7890
   ```

   

