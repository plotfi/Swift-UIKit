@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UISwipeGestureRecognizer.Direction")
typealias UISwipeGestureRecognizerDirection = UISwipeGestureRecognizer.Direction
extension UISwipeGestureRecognizer {
  struct Direction : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UISwipeGestureRecognizer.Direction
    typealias ArrayLiteralElement = UISwipeGestureRecognizer.Direction
    static var right: UISwipeGestureRecognizer.Direction { get }
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UISwipeGestureRecognizer.Direction { get }
    static var left: UISwipeGestureRecognizer.Direction { get }
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UISwipeGestureRecognizer.Direction { get }
    static var up: UISwipeGestureRecognizer.Direction { get }
    @available(swift, obsoleted: 3, renamed: "up")
    static var Up: UISwipeGestureRecognizer.Direction { get }
    static var down: UISwipeGestureRecognizer.Direction { get }
    @available(swift, obsoleted: 3, renamed: "down")
    static var Down: UISwipeGestureRecognizer.Direction { get }
  }
}
@available(iOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var numberOfTouchesRequired: Int
  var direction: UISwipeGestureRecognizer.Direction
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
}
