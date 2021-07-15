#!/bin/sh

swift-ide-test -print-module -module-to-print=$1 -source-filename=x -target arm64-apple-ios  -enable-objc-interop \
   -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk \
   --iframework=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/UIKit.framework
