# MixKit
oc 与 swift 混合开发测试

### 测试环境

- Xcode7 beta4
- cocoapods 0.37.2

### OC 工程使用 Swift  | Swift 使用 OC

- OC文件引用Swift，#import "target name-Swift.h" 

> - eg #import "OC_Swift-Swift.h" ，可查看 build settings -> Objective-C Generated interface Header Name

- Swift文件引用OC，添加 arget name-Bridging-Header.h 头文件， 路径写在 build settings -> Objective-C Bridging Header

注：[https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-ID122](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-ID122) 显示swift类，不是继承自 NSObject，需 @objc() 声明，但是 Xcode7 beta4 以后显示错误


### 使用 cocoapods 依赖混合开发

#### cocoapods 仓库

- 创建 Cocoa Touch Framework，语言 Swift

- Swift文件引用OC, build phases -> headers，oc 文件选为 public，然后在 target.h 里文件里引用
- OC 引用 Swift，应用头文件 #import <MixFrameWork/MixFrameWork-Swift.h>


#### 使用 

- Podfile 中使用 use_frameworks!
- 调用 Swift. #import <MixFrameWork/MixFrameWork-Swift.h> 
- 调用 OC, #import "MM.h"

### 参考

- [ http://blog.cocoapods.org/CocoaPods-0.36/]( http://blog.cocoapods.org/CocoaPods-0.36/)
- [https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-ID122](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-ID122)
