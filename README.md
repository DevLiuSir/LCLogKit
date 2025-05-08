<p align="center">
<img src="./Design/Icons.png" width="200">

<p align="center"> <b> LCLogKit is a lightweight Swift logger!</b></p>

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


## How to use

- Debug output, do not show method names

```swift
LCLogKit.debug("Debug output", showFunction: false)
```

- Normal output information

```swift
LCLogKit.info("General info")
```

- Warning output information

```swift
LCLogKit.warning("Warning message")
```

- Error output information

```swift
LCLogKit.error("Error occurred")
```


        
## Preview
![](./Design/preview_en.png)        



## Installation

### CocoaPods
LCLogKit is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:


```swift
pod 'LCLogKit'
```



### SwiftPackage

Add `https://github.com/DevLiuSir/LCLogKit.git` in the [“Swift Package Manager” tab in Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).


## License

MIT License

Copyright (c) 2024 Marvin


## Author

| [<img src="https://avatars2.githubusercontent.com/u/11488337?s=460&v=4" width="120px;"/>](https://github.com/DevLiuSir)  |  [DevLiuSir](https://github.com/DevLiuSir)<br/><br/><sub>Software Engineer</sub><br/> [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/twitter.svg" height="20" width="20"/>][1] [<img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg" height="20" width="20"/>][2] [<img align="center" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" height="20" width="20"/>][3]|
| :------------: | :------------: |

[1]: https://twitter.com/LiuChuan_
[2]: https://github.com/DevLiuSir
[3]: https://devliusir.com/

        
        