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

   

