### ADB

- [官方文档](https://developer.android.google.cn/studio/command-line/adb)
- [第三方播客](https://mazhuang.org/awesome-adb/)

 

---

### 常用命令

1. 卸载所有第三方应用：

```shell
adb shell pm list packages -3 | cut -d':' -f2 | tr '\r' ' ' | xargs -r -n1 -t adb uninstall

```

2. 查看前台 Activity
```shell
   adb shell dumpsys activity activities | grep mResumedActivity
   
   # 有的手机（pixel 5）手机上不行，就用下面这个命令
   adb shell dumpsys activity activities | grep mCurrentFocus
```

3. 获取剪切板内容

```shell
# 这个命令会模拟触发系统的剪贴板操作，将剪贴板内容粘贴到当前活动应用中。请注意，这个操作可能会导致当前应用中的内容被替换
adb shell input keyevent 279

```

   

