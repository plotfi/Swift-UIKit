# Swift-UIKit
Swift IDE dumps of all of UIKit

Ever wanted to see the jump to definition you'd get for UIKit when using Xcode?

This project has scripts and generated Swift files that provide that information.

This is all produced from simple running something like:

```
swift-ide-test -print-module -module-to-print=UIKit -source-filename=x -target arm64-apple-ios  -enable-objc-interop \
   -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk \
   --iframework=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/UIKit.framework
```

or UIKit.blah for a sub-module, ie:

```
swift-ide-test -print-module -module-to-print=UIKit.UIApplication -source-filename=x -target arm64-apple-ios  -enable-objc-interop \
   -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk \
   --iframework=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/UIKit.framework
```
