WatchActivityIndicator
===

Apple Watch [`WKInterfaceImage`](https://developer.apple.com/library/ios/documentation/WatchKit/Reference/WKInterfaceImage_class/) and [`WKInterfaceGroup`](https://developer.apple.com/library/ios/documentation/WatchKit/Reference/WKInterfaceGroup_class/) extension for showing activity indicators on them quickly.

Demo
----

![alt tag](https://github.com/cemolcay/WatchActivityIndicator/blob/master/Demo.gif?raw=true)

Requirements
----

* watchos 2.0+
* Swift 5.0+
* Xcode 10.2+

Install
----

#### Cocoapods
``` ruby
target 'your_watch_extension_target' do 
  platform :watchos, 2.0
  pod 'WatchActiviyIndicator'
end
```

Usage
----

Call `startActivityIndicator` and `stopActivityIndicator` functions on any [`WKInterfaceImage`](https://developer.apple.com/library/ios/documentation/WatchKit/Reference/WKInterfaceImage_class/) or [`WKInterfaceGroup`](https://developer.apple.com/library/ios/documentation/WatchKit/Reference/WKInterfaceGroup_class/) instance for default activity indicator.

``` swift
// start
imageView?.startActivityIndicator()
group?.startActivityIndicator()
// stop
imageView?.stopActivityIndicator()
group?.stopActivityIndicator()
```

You can set parameters of `startActivityIndicator` for custom animation sequance and duration.

``` swift
imageView?.startActivityIndicator(
  imageNamed: "CustomAnimation",
  animationRange: NSMakeRange(0, frameCount),
  duration: customAnimationDuration)
```

Works on any image view or group.

![alt tag](https://github.com/cemolcay/WatchActivityIndicator/blob/master/IB.png?raw=true)
