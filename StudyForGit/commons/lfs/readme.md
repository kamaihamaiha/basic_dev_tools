## LFS 大文件支持问题



#### 1. Git 服务器的仓库，有大文件，但是没有 lfs 到本地（本地也有这个文件，只是不是完整的）

- 先列出 lfs 的文件
  `git lfs ls-files`

  如下：

  ```shell
  e11a330671 * Eudict_Reader_English/res/raw/cg_bin
  b379e1b96c * Eudict_Reader_English/res/raw/concise_bin
  7dd1be0c84 * Eudict_Ting_Chinese/libs/armeabi/libsqlite.so
  e11a330671 * Eudict_Ting_Chinese/res/raw/cg_bin
  11e320cbc3 * Eudict_Ting_Chinese/res/raw/concise_bin
  e11a330671 * Eudict_Ting_English/res/raw/cg_bin
  a2dfe547e1 * Eudict_Ting_English/res/raw/concise_bin
  5b0994ffb0 - Eudict_Ting_English/so/arm64-v8a/libijkffmpeg.so
  9e0a6a450b - Eudict_Ting_English/so/armeabi-v7a/libijkffmpeg.so
  e11a330671 * Eudict_Ting_English_Plus/res/raw/cg_bin
  b379e1b96c * Eudict_Ting_English_Plus/res/raw/concise_bin
  d4a27c5dfb - Eudict_Ting_French/res/raw/cg_bin
  ...
  ```

  注：* 代表和服务器一样，- 代表不一样

- 同步指定的大文件，如：arm64-v8a/libijkffmpeg.so

  ```shell
  git lfs pull --include "Eudict_Ting_English/so/arm64-v8a/libijkffmpeg.so"
  ```

- 再次执行命令查看 LFS 情况：

  ```shell
  ...
  5b0994ffb0 * Eudict_Ting_English/so/arm64-v8a/libijkffmpeg.so
  9e0a6a450b - Eudict_Ting_English/so/armeabi-v7a/libijkffmpeg.so
  ...
  ```

  文件前面的符号变为 * 了，可以了。

- 同步所有的大文件：

  ```shell
  // 同步远程仓库所有改动
  git lfs pull

  // 或者：恢复最新数据
  git lfs fetch --all
  ```
  
  

