@_exported import Foundation

@available(iOS 3.2, *)
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  var minimumPressDuration: TimeInterval
  var allowableMovement: CGFloat
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
}
