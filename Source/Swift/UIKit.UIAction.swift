@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAction.Identifier")
typealias UIActionIdentifier = UIAction.Identifier
extension UIAction {
  @available(iOS 13.0, *)
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
typealias UIActionHandler = (UIAction) -> Void
@available(iOS 13.0, *)
class UIAction : UIMenuElement {

  /// Short display title.
  var title: String

  /// Image that can appear next to this action.
  @NSCopying var image: UIImage?

  /// Elaborated title, if any.
  var discoverabilityTitle: String?

  /// This action's identifier.
  var identifier: UIAction.Identifier { get }

  /// This action's style.
  var attributes: UIMenuElement.Attributes

  /// State that can appear next to this action.
  var state: UIMenuElement.State

  /// If available, the object on behalf of which the actionHandler is called.
  @available(iOS 14.0, *)
  var sender: Any? { get }

  /**
   * @abstract Creates a UIAction with an empty title, nil image, and automatically generated identifier
   *
   * @param handler  Handler block. Called when the user selects the action.
   *
   * @return A new UIAction.
   */
  @available(iOS 14.0, *)
  @available(*, unavailable, message: "Use init(title:image:identifier:discoverabilityTitle:attributes:state:handler:) instead.")
  convenience init(handler: @escaping UIActionHandler)

  /**
   * @abstract Creates a UIAction with an empty title, nil image, and automatically generated identifier
   *
   * @param handler  Handler block. Called when the user selects the action.
   *
   * @return A new UIAction.
   */
  @available(iOS 14.0, *)
  @available(*, unavailable, renamed: "init(handler:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:identifier:discoverabilityTitle:attributes:state:handler:) instead.")
  class func actionWithHandler(_ handler: @escaping UIActionHandler) -> Self

  /**
   * @abstract Creates a UIAction with the given arguments.
   *
   * @param title    The action's title.
   * @param image    Image that can appear next to this action, if needed.
   * @param identifier  The action's identifier. Pass nil to use an auto-generated identifier.
   * @param handler  Handler block. Called when the user selects the action.
   *
   * @return A new UIAction.
   */
  @available(*, unavailable, message: "Use init(title:image:identifier:discoverabilityTitle:attributes:state:handler:) instead.")
  convenience init(title: String, image: UIImage?, identifier: UIAction.Identifier?, handler: @escaping UIActionHandler)

  /**
   * @abstract Creates a UIAction with the given arguments.
   *
   * @param title    The action's title.
   * @param image    Image that can appear next to this action, if needed.
   * @param identifier  The action's identifier. Pass nil to use an auto-generated identifier.
   * @param handler  Handler block. Called when the user selects the action.
   *
   * @return A new UIAction.
   */
  @available(*, unavailable, renamed: "init(title:image:identifier:handler:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:identifier:discoverabilityTitle:attributes:state:handler:) instead.")
  class func actionWithTitle(_ title: String, image: UIImage?, identifier: UIAction.Identifier?, handler: @escaping UIActionHandler) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  init?(coder: NSCoder)
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIAction {
  /// Creates a UIAction with the given arguments.
  ///
  /// - Parameters:
  ///   - title: The action's title.
  ///   - image: Image to be displayed alongside the action's title.
  ///   - identifier: Action's unique identifier. Pass nil to use an auto-generated identifier.
  ///   - discoverabilityTitle: Elaborated title, if any.
  ///   - attributes: Action's attributes.
  ///   - state: State that can appear next to the action.
  ///   - handler: Handler block. Called when the user selects the action.
  convenience init(title: String = "", image: UIImage? = nil, identifier: UIAction.Identifier? = nil, discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off, handler: @escaping UIActionHandler)
}
