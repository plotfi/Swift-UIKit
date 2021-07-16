@_exported import Foundation

@available(iOS 11.0, *)
class UIAccessibilityLocationDescriptor : NSObject {
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  convenience init(name: String, view: UIView)
  convenience init(name: String, point: CGPoint, in view: UIView)
  @available(swift, obsoleted: 3, renamed: "init(name:point:in:)")
  convenience init(name: String, point: CGPoint, inView view: UIView)
  init(attributedName: NSAttributedString, point: CGPoint, in view: UIView)
  @available(swift, obsoleted: 3, renamed: "init(attributedName:point:in:)")
  init(attributedName: NSAttributedString, point: CGPoint, inView view: UIView)
  weak var view: @sil_weak UIView? { get }
  var point: CGPoint { get }
  var name: String { get }
  var attributedName: NSAttributedString { get }
}
