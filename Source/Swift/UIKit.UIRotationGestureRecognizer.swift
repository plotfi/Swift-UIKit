@_exported import Foundation

@available(iOS 3.2, *)
class UIRotationGestureRecognizer : UIGestureRecognizer {
  var rotation: CGFloat
  var velocity: CGFloat { get }
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
}
