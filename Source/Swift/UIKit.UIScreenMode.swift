@_exported import Foundation

@available(iOS 3.2, *)
class UIScreenMode : NSObject {
  var size: CGSize { get }
  var pixelAspectRatio: CGFloat { get }
  init()
}
