@_exported import Foundation

@available(iOS 13.0, *)
protocol UITextFormattingCoordinatorDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  func updateTextAttributes(conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "updateTextAttributes(conversionHandler:)")
  func updateTextAttributesWithConversionHandler(_ conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
}
@available(iOS 13.0, *)
class UITextFormattingCoordinator : NSObject, UIFontPickerViewControllerDelegate {
  weak var delegate: @sil_weak UITextFormattingCoordinatorDelegate?
  class var isFontPanelVisible: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isFontPanelVisible")
  class var fontPanelVisible: Bool { get }
  convenience init(for windowScene: UIWindowScene)
  @available(swift, obsoleted: 3, renamed: "init(for:)")
  convenience init(forWindowScene windowScene: UIWindowScene)
  @available(*, unavailable, renamed: "init(for:)", message: "Not available in Swift")
  class func textFormattingCoordinatorForWindowScene(_ windowScene: UIWindowScene) -> Self
  init(windowScene: UIWindowScene)
  @available(*, unavailable)
  convenience init()
  func setSelectedAttributes(_ attributes: [NSAttributedString.Key : Any], isMultiple flag: Bool)
  class func toggleFontPanel(_ sender: Any)
  @available(iOS 13.0, *)
  func fontPickerViewControllerDidCancel(_ viewController: UIFontPickerViewController)
  @available(iOS 13.0, *)
  func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController)
}
