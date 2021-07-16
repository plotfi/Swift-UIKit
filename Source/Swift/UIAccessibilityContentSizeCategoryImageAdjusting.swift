@_exported import Foundation

@available(iOS 11.0, *)
protocol UIAccessibilityContentSizeCategoryImageAdjusting : NSObjectProtocol {
  var adjustsImageSizeForAccessibilityContentSizeCategory: Bool { get set }
}
extension UIImageView : UIAccessibilityContentSizeCategoryImageAdjusting {
  @available(iOS 11.0, *)
  var adjustsImageSizeForAccessibilityContentSizeCategory: Bool
}
extension UIButton : UIAccessibilityContentSizeCategoryImageAdjusting {
  @available(iOS 11.0, *)
  var adjustsImageSizeForAccessibilityContentSizeCategory: Bool
}
extension NSTextAttachment : UIAccessibilityContentSizeCategoryImageAdjusting {
  @available(iOS 11.0, *)
  var adjustsImageSizeForAccessibilityContentSizeCategory: Bool
}
