@_exported import Foundation

protocol UIAccessibilityIdentification : NSObjectProtocol {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String? { get set }
}
extension UIView : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIBarItem : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIAlertAction : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIMenuElement : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIImage : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
