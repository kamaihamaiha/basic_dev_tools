## Android 调试总结





### logcat

- 用 logcat 过滤日志

  ```shell
  // Mac OS 终端，过滤 Error 级别的日志. 后面可以加上包名限制。
  adb logcat "*:E" | grep 'your.package.name'
  ```




### aapt

aapt 是 Android SDK 提供的工具，目录：your sdk path//build-tools/某一个版本/ 比如：

```shell
/Users/kk/Library/Android/sdk/build-tools/30.0.3
```

为了使用方便，可以把下 built-tools 提供的工具路径配置到环境变量中。

- 查看 apk 文件到信息，过滤出版本号：

```shell
  aapt dump badging xxx.apk | grep "version"
```

  

### [ADB](./ADB.md)



[投屏工具](./screen_control.md)



#### MuMu 模拟器

mac 连接模拟器

```shell
adb kill-server && adb server && adb shell
```



