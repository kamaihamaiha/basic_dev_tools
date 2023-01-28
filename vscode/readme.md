## VS Code 使用教程

[教程视频](https://www.bilibili.com/video/BV1ty4y1S7mC?p=2&spm_id_from=333.880.my_history.page.click&vd_source=82b7ac2fbd7ece380f983e2c23199d99)

- 显示 「Get Started」页面
  - 打开 「Command Palette」
  - 然后搜索：
    - Help: get started （如果是编辑器语言是英文）
    - Welcom 或者 欢迎使用（如果编辑器语言是中文）
- 快捷键查询
  - 打开 「Command Palette」
  - 然后搜索：shortcuts
  - 选中后，会打开一个快捷键的网页

- 格式化 css 文件
  - 安装插件：`JS-CSS-HTML Formatter`
  - 按下快捷键：`option + shift + F`

#### 快捷键

- 代码提示（或者叫做：触发建议）：`⌘ + i`
- 上下移动一行：`⌥ + ↑/↓`


---

### vscode 配置 C/C++ 调试环境

Mac 下的 vscode 在执行「终端」-> 「运行任务」时会报链接错误：
```
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```
这个先不管，直接手动编译出可执行文件，编译命令写在了 `build.sh` 脚本中，然后配置调试。
