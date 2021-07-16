@_exported import Foundation

@available(iOS 3.0, *)
class UIAccessibilityElement : UIResponder, UIAccessibilityIdentification {
  init(accessibilityContainer container: Any)
  weak var accessibilityContainer: @sil_weak AnyObject?
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityFrame: CGRect
  var accessibilityTraits: UIAccessibilityTraits
  @available(iOS 10.0, *)
  var accessibilityFrameInContainerSpace: CGRect
  init()
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
