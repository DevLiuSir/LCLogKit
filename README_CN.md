<p align="center">
<img src="./Design/Icons.png" width="200">

<p align="center"> <b> LCLogger 是一款轻量级的 Swift 日志记录器！</b></p>

<p align="center">
<img src="https://badgen.net/badge/icon/apple?icon=apple&label">
<img src="https://img.shields.io/badge/language-swift-orange.svg">
<img src="https://img.shields.io/badge/macOS-10.14-blue.svg">
<img src="https://img.shields.io/badge/build-passing-brightgreen">
<img src="https://img.shields.io/github/languages/top/DevLiuSir/LCLogKit?color=blueviolet">
<img src="https://img.shields.io/github/license/DevLiuSir/LCLogKit.svg">
<img src="https://img.shields.io/github/languages/code-size/DevLiuSir/LCLogKit?color=ff69b4&label=codeSize">
<img src="https://img.shields.io/github/repo-size/DevLiuSir/LCLogKit">
<img src="https://img.shields.io/github/last-commit/DevLiuSir/LCLogKit">
<img src="https://img.shields.io/github/commit-activity/m/DevLiuSir/LCLogKit">
<img src="https://img.shields.io/github/stars/DevLiuSir/LCLogKit.svg?style=social&label=Star">
<img src="https://img.shields.io/github/forks/DevLiuSir/LCLogKit?style=social">
<img src="https://img.shields.io/github/watchers/DevLiuSir/LCLogKit?style=social">
<a href="https://twitter.com/LiuChuan_"><img src="https://img.shields.io/twitter/follow/LiuChuan_.svg?style=social"></a>
</p>

---

> [中文](README_CN.md) | [English](README.md)


## 如何使用

- 调试输出，不显示方法名称

```swift
LCLogKit.debug("调试输出", showFunction: false)
```

- 普通输出信息

```swift
LCLogKit.info("普通信息")
```

- 警告输出信息

```swift
LCLogKit.warning("警告信息")
```

- 错误输出信息

```swift
LCLogKit.error("错误信息")
```



## 预览        

```swift
[🐞 DEBUG] [2021-02-08 14:49:12] AppDelegate.swift: [30] => 调试输出
[ℹ️ INFO] [2021-02-08 14:49:12] AppDelegate.swift: [31] applicationDidFinishLaunching(_:) => 普通信息
[⚠️ WARNING] [2021-02-08 14:49:12] AppDelegate.swift: [32] applicationDidFinishLaunching(_:) => 警告信息
[❌ ERROR] [2021-02-08 14:49:12] AppDelegate.swift: [33] applicationDidFinishLaunching(_:) => 错误信息

```



## 安装

### CocoaPods
LCLogKit 可通过 [CocoaPods](https://cocoapods.org) 获取。要安装它，只需将以下行添加到您的 Podfile 中：


```swift
pod 'LCLogKit'
```



### SwiftPackage

添加 `https://github.com/DevLiuSir/LCLogKit.git`  [Xcode 中的“Swift Package Manager”选项卡](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).


## 许可证

MIT License

Copyright (c) 2024 Marvin


## 作者

| [<img src="https://avatars2.githubusercontent.com/u/11488337?s=460&v=4" width="120px;"/>](https://github.com/DevLiuSir)  |  [DevLiuSir](https://github.com/DevLiuSir)<br/><br/><sub>Software Engineer</sub><br/> [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/twitter.svg" height="20" width="20"/>][1] [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg" height="20" width="20"/>][2] [<img align="center" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" height="20" width="20"/>][3]|
| :------------: | :------------: |

[1]: https://twitter.com/LiuChuan_
[2]: https://github.com/DevLiuSir
[3]: https://devliusir.com/

        
        