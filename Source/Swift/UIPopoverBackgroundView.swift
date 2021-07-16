@_exported import Foundation

protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
@available(iOS 5.0, *)
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "No longer supported")
  class var wantsDefaultContentAppearance: Bool { get }
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 5.0, *)
  class func arrowBase() -> CGFloat
  @available(iOS 5.0, *)
  class func contentViewInsets() -> UIEdgeInsets
  @available(iOS 5.0, *)
  class func arrowHeight() -> CGFloat
}
