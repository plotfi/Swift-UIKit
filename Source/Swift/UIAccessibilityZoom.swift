@_exported import Foundation

@available(iOS 5.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.ZoomType")
typealias UIAccessibilityZoomType = UIAccessibility.ZoomType
extension UIAccessibility {
  @available(iOS 5.0, *)
  enum ZoomType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case insertionPoint
    @available(swift, obsoleted: 3, renamed: "insertionPoint")
    static var InsertionPoint: UIAccessibility.ZoomType { get }
  }
  @available(iOS 5.0, *)
  static func zoomFocusChanged(zoomType type: UIAccessibility.ZoomType, toFrame frame: CGRect, in view: UIView)
  @available(iOS 5.0, *)
  static func registerGestureConflictWithZoom()
}
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.zoomFocusChanged(zoomType:toFrame:in:)")
func UIAccessibilityZoomFocusChanged(_ type: UIAccessibility.ZoomType, _ frame: CGRect, _ view: UIView)
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.registerGestureConflictWithZoom()")
func UIAccessibilityRegisterGestureConflictWithZoom()
