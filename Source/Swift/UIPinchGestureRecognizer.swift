@_exported import Foundation

@available(iOS 3.2, *)
class UIPinchGestureRecognizer : UIGestureRecognizer {
  var scale: CGFloat
  var velocity: CGFloat { get }
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
}
