@_exported import Foundation

@available(iOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init()
  init?(coder: NSCoder)
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  var title: String?
  var image: UIImage?
  @available(iOS 5.0, *)
  var landscapeImagePhone: UIImage?
  @available(iOS 11.0, *)
  var largeContentSizeImage: UIImage?
  var imageInsets: UIEdgeInsets
  @available(iOS 5.0, *)
  var landscapeImagePhoneInsets: UIEdgeInsets
  @available(iOS 11.0, *)
  var largeContentSizeImageInsets: UIEdgeInsets
  var tag: Int
  @available(iOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setTitleTextAttributes(_:for:)")
  func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, forState state: UIControl.State)
  @available(iOS 5.0, *)
  func titleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "titleTextAttributes(for:)")
  func titleTextAttributesForState(_ state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(iOS 2.0, *)
  func encode(with coder: NSCoder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func appearance(whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
  @available(iOS 8.0, *)
  class func appearance(for trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func appearance(for trait: UITraitCollection, whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
}
