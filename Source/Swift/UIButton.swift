@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIButton.ButtonType")
typealias UIButtonType = UIButton.ButtonType
extension UIButton {
  enum ButtonType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case custom
    @available(swift, obsoleted: 3, renamed: "custom")
    static var Custom: UIButton.ButtonType { get }
    @available(iOS 7.0, *)
    case system
    @available(iOS 7.0, *)
    @available(swift, obsoleted: 3, renamed: "system")
    static var System: UIButton.ButtonType { get }
    case detailDisclosure
    @available(swift, obsoleted: 3, renamed: "detailDisclosure")
    static var DetailDisclosure: UIButton.ButtonType { get }
    case infoLight
    @available(swift, obsoleted: 3, renamed: "infoLight")
    static var InfoLight: UIButton.ButtonType { get }
    case infoDark
    @available(swift, obsoleted: 3, renamed: "infoDark")
    static var InfoDark: UIButton.ButtonType { get }
    case contactAdd
    @available(swift, obsoleted: 3, renamed: "contactAdd")
    static var ContactAdd: UIButton.ButtonType { get }
    @available(iOS, unavailable)
    case plain
    @available(iOS 13.0, *)
    case close
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "close")
    static var Close: UIButton.ButtonType { get }
    static var roundedRect: UIButton.ButtonType { get }
  }
  @available(iOS 14.0, *)
  enum Role : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case normal
    @available(swift, obsoleted: 3, renamed: "normal")
    static var Normal: UIButton.Role { get }
    case primary
    @available(swift, obsoleted: 3, renamed: "primary")
    static var Primary: UIButton.Role { get }
    case cancel
    @available(swift, obsoleted: 3, renamed: "cancel")
    static var Cancel: UIButton.Role { get }
    case destructive
    @available(swift, obsoleted: 3, renamed: "destructive")
    static var Destructive: UIButton.Role { get }
  }
}
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIButton.Role")
typealias UIButtonRole = UIButton.Role
@available(iOS 13.4, *)
typealias UIButtonPointerStyleProvider = (UIButton, __UIPointerEffect, __UIPointerShape) -> UIPointerStyle?
@available(iOS 2.0, *)
class UIButton : UIControl, NSCoding {
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes a custom button, registers primaryAction for the UIControlEventPrimaryActionTriggered control event, and uses primaryAction's title & image as the button's title & image.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init(type buttonType: UIButton.ButtonType)
  @available(*, unavailable, renamed: "init(type:)", message: "Not available in Swift")
  class func buttonWithType(_ buttonType: UIButton.ButtonType) -> Self
  @available(iOS 13.0, *)
  class func systemButton(with image: UIImage, target: Any?, action: Selector?) -> Self
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemButton(with:target:action:)")
  class func systemButtonWithImage(_ image: UIImage, target: Any?, action: Selector?) -> Self

  /// Creates a system button, registers primaryAction for the UIControlEventPrimaryActionTriggered control event, and uses primaryAction's title & image as the button's title & image.
  @available(iOS 14.0, *)
  @available(*, unavailable, message: "Prefer init(type:primaryAction:)")
  class func systemButton(withPrimaryAction primaryAction: UIAction?) -> Self

  /// Creates a system button, registers primaryAction for the UIControlEventPrimaryActionTriggered control event, and uses primaryAction's title & image as the button's title & image.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "systemButton(withPrimaryAction:)")
  @available(*, unavailable, message: "Prefer init(type:primaryAction:)")
  class func systemButtonWithPrimaryAction(_ primaryAction: UIAction?) -> Self

  /// Creates a button of the given type, registers primaryAction for the UIControlEventPrimaryActionTriggered control event, and if appropriate uses primaryAction's title & image as the button's title & image.
  @available(iOS 14.0, *)
  convenience init(__type buttonType: UIButton.ButtonType, primaryAction: UIAction?)

  /// Creates a button of the given type, registers primaryAction for the UIControlEventPrimaryActionTriggered control event, and if appropriate uses primaryAction's title & image as the button's title & image.
  @available(iOS 14.0, *)
  @available(*, unavailable, renamed: "init(__type:primaryAction:)", message: "Not available in Swift")
  class func __buttonWithType(_ buttonType: UIButton.ButtonType, primaryAction: UIAction?) -> Self
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var showsTouchWhenHighlighted: Bool
  @available(iOS 5.0, *)
  var tintColor: UIColor!
  var buttonType: UIButton.ButtonType { get }
  @available(iOS 14.0, *)
  var role: UIButton.Role

  /// Enables this button's built-in pointer interaction.
  @available(iOS 13.4, *)
  var isPointerInteractionEnabled: Bool

  /// Enables this button's built-in pointer interaction.
  @available(iOS 13.4, *)
  @available(swift, obsoleted: 3, renamed: "isPointerInteractionEnabled")
  var pointerInteractionEnabled: Bool

  /**
   * @abstract Called when the system pointer hovers over this button if its pointer interaction is enabled. The
   *           system calls this block with a proposed UIPointerEffect and UIPointerShape. You may use them to construct
   *           a customized version of the system provided style or return an entirely custom one.
   */
  @available(iOS 13.4, *)
  var __pointerStyleProvider: UIButtonPointerStyleProvider?

  /// An optional menu for the button to display. The button will automatically enable or disable its contextMenuInteraction when a non-nil or nil menu is set. Defaults to nil.
  @available(iOS 14.0, *)
  @NSCopying var menu: UIMenu?
  func setTitle(_ title: String?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setTitle(_:for:)")
  func setTitle(_ title: String?, forState state: UIControl.State)
  func setTitleColor(_ color: UIColor?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setTitleColor(_:for:)")
  func setTitleColor(_ color: UIColor?, forState state: UIControl.State)
  func setTitleShadowColor(_ color: UIColor?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setTitleShadowColor(_:for:)")
  func setTitleShadowColor(_ color: UIColor?, forState state: UIControl.State)
  func setImage(_ image: UIImage?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setImage(_:for:)")
  func setImage(_ image: UIImage?, forState state: UIControl.State)
  func setBackgroundImage(_ image: UIImage?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:)")
  func setBackgroundImage(_ image: UIImage?, forState state: UIControl.State)
  @available(iOS 13.0, *)
  func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "setPreferredSymbolConfiguration(_:forImageIn:)")
  func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageInState state: UIControl.State)
  @available(iOS 6.0, *)
  func setAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setAttributedTitle(_:for:)")
  func setAttributedTitle(_ title: NSAttributedString?, forState state: UIControl.State)
  func title(for state: UIControl.State) -> String?
  @available(swift, obsoleted: 3, renamed: "title(for:)")
  func titleForState(_ state: UIControl.State) -> String?
  func titleColor(for state: UIControl.State) -> UIColor?
  @available(swift, obsoleted: 3, renamed: "titleColor(for:)")
  func titleColorForState(_ state: UIControl.State) -> UIColor?
  func titleShadowColor(for state: UIControl.State) -> UIColor?
  @available(swift, obsoleted: 3, renamed: "titleShadowColor(for:)")
  func titleShadowColorForState(_ state: UIControl.State) -> UIColor?
  func image(for state: UIControl.State) -> UIImage?
  @available(swift, obsoleted: 3, renamed: "image(for:)")
  func imageForState(_ state: UIControl.State) -> UIImage?
  func backgroundImage(for state: UIControl.State) -> UIImage?
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:)")
  func backgroundImageForState(_ state: UIControl.State) -> UIImage?
  @available(iOS 13.0, *)
  func preferredSymbolConfigurationForImage(in state: UIControl.State) -> UIImage.SymbolConfiguration?
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "preferredSymbolConfigurationForImage(in:)")
  func preferredSymbolConfigurationForImageInState(_ state: UIControl.State) -> UIImage.SymbolConfiguration?
  @available(iOS 6.0, *)
  func attributedTitle(for state: UIControl.State) -> NSAttributedString?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "attributedTitle(for:)")
  func attributedTitleForState(_ state: UIControl.State) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(iOS 13.0, *)
  var currentPreferredSymbolConfiguration: UIImage.SymbolConfiguration? { get }
  @available(iOS 6.0, *)
  var currentAttributedTitle: NSAttributedString? { get }
  @available(iOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  func backgroundRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "backgroundRect(forBounds:)")
  func backgroundRectForBounds(_ bounds: CGRect) -> CGRect
  func contentRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "contentRect(forBounds:)")
  func contentRectForBounds(_ bounds: CGRect) -> CGRect
  func titleRect(forContentRect contentRect: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "titleRect(forContentRect:)")
  func titleRectForContentRect(_ contentRect: CGRect) -> CGRect
  func imageRect(forContentRect contentRect: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "imageRect(forContentRect:)")
  func imageRectForContentRect(_ contentRect: CGRect) -> CGRect
  convenience init()
}

extension UIButton {
  @available(iOS 14.0, *)
  convenience init(type buttonType: UIButton.ButtonType = .system, primaryAction: UIAction?)
}

@available(iOS 13.4, *)
extension UIButton {
  typealias PointerStyleProvider = (UIButton, UIPointerEffect, UIPointerShape) -> UIPointerStyle?
  var pointerStyleProvider: UIButton.PointerStyleProvider?
}
extension UIButton {
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var font: UIFont
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var lineBreakMode: NSLineBreakMode
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var titleShadowOffset: CGSize
}
extension UIButton : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
