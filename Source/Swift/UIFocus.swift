@_exported import Foundation

@available(iOS 9.0, *)
struct UIFocusHeading : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIFocusHeading
  typealias ArrayLiteralElement = UIFocusHeading
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UIFocusHeading { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIFocusHeading { get }
  static var up: UIFocusHeading { get }
  @available(swift, obsoleted: 3, renamed: "up")
  static var Up: UIFocusHeading { get }
  static var down: UIFocusHeading { get }
  @available(swift, obsoleted: 3, renamed: "down")
  static var Down: UIFocusHeading { get }
  static var left: UIFocusHeading { get }
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: UIFocusHeading { get }
  static var right: UIFocusHeading { get }
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: UIFocusHeading { get }
  static var next: UIFocusHeading { get }
  @available(swift, obsoleted: 3, renamed: "next")
  static var Next: UIFocusHeading { get }
  static var previous: UIFocusHeading { get }
  @available(swift, obsoleted: 3, renamed: "previous")
  static var Previous: UIFocusHeading { get }
}
struct UIFocusSoundIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}

/// Objects conforming to UIFocusEnvironment influence and respond to focus behavior within a specific area of the screen that they control.
@available(iOS 9.0, *)
protocol UIFocusEnvironment : NSObjectProtocol {

  /// The preferred focus environments define where to search for the default focused item in an environment, such as when focus updates programmatically.
  /// Starting from the target environment, each preferred focus environment is recursively searched in the order of the array until an eligible, focusable item is found.
  /// Preferred focus environments can include focusable and non-focusable items, in addition to non-item environments. Returning an empty array is equivalent to returning an array containing only 'self'.
  var preferredFocusEnvironments: [UIFocusEnvironment] { get }

  /// The parent focus environment of this environment, or nil if no parent exists.
  /// NOTE: If you implement this method, you must return a non-nil value for parent focus environment, otherwise your focus environment will not participate in focus interactions.
  @available(iOS 12.0, *)
  weak var parentFocusEnvironment: @sil_weak UIFocusEnvironment? { get }

  /// The container of any child focus items in this focus environment, or nil if no container exists.
  @available(iOS 12.0, *)
  var focusItemContainer: UIFocusItemContainer? { get }

  /// Marks this environment as needing a focus update, which if accepted will attempt to reset focus to this environment, or one of its preferred focus environments, on the next update cycle. If this environment does not currently contain the focused item, then calling this method has no effect. If a parent of this environment is also requesting focus, then this environment's request is rejected in favor of the parent's.
  /// NOTE: If you provide your own implementation, it must call `[[UIFocusSystem focusSystemForEnvironment:self] requestFocusUpdateToEnvironment:self]`;
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment or one of its preferred focus environments.
  /// NOTE: If you provide your own implementation, it must call `[[UIFocusSystem focusSystemForEnvironment:self] updateFocusIfNeeded];`.
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool

  /// Asks whether the system should allow a focus update to occur.
  @available(swift, obsoleted: 3, renamed: "shouldUpdateFocus(in:)")
  func shouldUpdateFocusInContext(_ context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focused item has been updated to a new item. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)

  /// Called when the screen’s focused item has been updated to a new item. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(swift, obsoleted: 3, renamed: "didUpdateFocus(in:with:)")
  func didUpdateFocusInContext(_ context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)

  /// Specifies an identifier corresponding to a sound that should be played for a focus update.
  /// Return UIFocusSoundIdentifierNone to opt out of sounds, UIFocusSoundIdentifierDefault for the system
  /// default sounds, a previously registered identifier for a custom sound, or nil to defer the decision
  /// to the parent.
  @available(iOS, unavailable)
  optional func soundIdentifierForFocusUpdate(in context: UIFocusUpdateContext) -> UIFocusSoundIdentifier?

  /// Specifies an identifier corresponding to a sound that should be played for a focus update.
  /// Return UIFocusSoundIdentifierNone to opt out of sounds, UIFocusSoundIdentifierDefault for the system
  /// default sounds, a previously registered identifier for a custom sound, or nil to defer the decision
  /// to the parent.
  @available(swift, obsoleted: 3, renamed: "soundIdentifierForFocusUpdate(in:)")
  @available(iOS, unavailable)
  optional func soundIdentifierForFocusUpdateInContext(_ context: UIFocusUpdateContext) -> UIFocusSoundIdentifier?
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  weak optional var preferredFocusedView: @sil_weak UIView? { get }

  /// The identifier of the focus group that this view belongs to. If this is nil, subviews inherit their superview's focus group.
  @available(iOS 14.0, *)
  optional var focusGroupIdentifier: String? { get }
}

@available(iOS 11.0, tvOS 11.0, *)
extension UIFocusEnvironment {
  @available(iOS 11.0, tvOS 11.0, *)
  func contains(_ environment: UIFocusEnvironment) -> Bool
}

/// Objects conforming to UIFocusItem are considered capable of participating in focus. Only UIFocusItems can ever be focused.
@available(iOS 10.0, *)
protocol UIFocusItem : UIFocusEnvironment {

  /// Indicates whether or not this item is currently allowed to become focused.
  /// Returning NO restricts the item from being focusable, even if it is visible in the user interface. For example, UIControls return NO if they are disabled.
  var canBecomeFocused: Bool { get }

  /// The geometric frame of this item, represented in the `coordinateSpace` of the UIFocusItemContainer in which it is contained.
  @available(iOS 12.0, *)
  var frame: CGRect { get }

  /// Called whenever this focus item is hinting to the user a focus movement might occur.
  /// The provided object is mutated by the focus engine whenever the user's finger moves.
  @available(iOS 12.0, *)
  optional func didHintFocusMovement(_ hint: UIFocusMovementHint)
}

@available(iOS 11.0, tvOS 11.0, *)
extension UIFocusItem {
  @available(iOS 11.0, tvOS 11.0, *)
  var isFocused: Bool { get }
}

/// Objects conforming to UIFocusItemContainer are responsible for providing which focus items they
/// contain and where they are.
@available(iOS 12.0, *)
protocol UIFocusItemContainer : NSObjectProtocol {

  /// The coordinate space of the focus items contained in this container. The focus items returned by focusItemsInRect: should report their frames in this coordinate space.
  /// If you are implementing this protocol, you may find it convenient to return the UIScreen as your coordinate space, and ensure that your contained items report their frames in screen space.
  /// Similarly, you might find that your focus items' containing UIView or UIWindow is the most convenient coordinate space to use.
  /// You may also choose to implement your own object that conforms to UICoordinateSpace, if that is the most natural solution for your architecture.
  var coordinateSpace: UICoordinateSpace { get }

  /// Returns an array of all focus items within this container that intersect with the provided rect. `rect` is expressed in `coordinateSpace`.
  func focusItems(in rect: CGRect) -> [UIFocusItem]

  /// Returns an array of all focus items within this container that intersect with the provided rect. `rect` is expressed in `coordinateSpace`.
  @available(swift, obsoleted: 3, renamed: "focusItems(in:)")
  func focusItemsInRect(_ rect: CGRect) -> [UIFocusItem]
}

/// Objects conforming to UIFocusItemScrollableContainer are updated accordingly to ensure the
/// focused item remains visible on the screen.
@available(iOS 12.0, *)
protocol UIFocusItemScrollableContainer : UIFocusItemContainer {

  /// The current content offset of this scrollable container. If the scrollable container has a `bounds` property, `bounds.origin` must be equal to `contentOffset`.
  var contentOffset: CGPoint { get set }

  /// The total size of the content contained by this container. If this size exceeds the size of
  /// this container's visible size, then scrolling is possible.
  var contentSize: CGSize { get }

  /// The visible size of this scrollable container.
  var visibleSize: CGSize { get }
}

/// UIFocusUpdateContexts provide information relevant to a specific focus update from one view to another. They are ephemeral objects that are usually discarded after the update is finished.
@available(iOS 9.0, *)
class UIFocusUpdateContext : NSObject {

  /// The item that was focused before the update, i.e. where focus is updating from. May be nil if no item was focused, such as when focus is initially set.
  @available(iOS 10.0, *)
  weak var previouslyFocusedItem: @sil_weak UIFocusItem? { get }

  /// The item that is focused after the update, i.e. where focus is updating to. May be nil if no item is being focused, meaning focus is being lost.
  @available(iOS 10.0, *)
  weak var nextFocusedItem: @sil_weak UIFocusItem? { get }

  /// The view that was focused before the update. May be nil if no view was focused, such as when setting initial focus.
  /// If previouslyFocusedItem is not a view, this returns that item's containing view, otherwise they are equal.
  /// NOTE: This property will be deprecated in a future release. Use previouslyFocusedItem instead.
  weak var previouslyFocusedView: @sil_weak UIView? { get }

  /// The view that will be focused after the update. May be nil if no view will be focused.
  /// If nextFocusedItem is not a view, this returns that item's containing view, otherwise they are equal.
  /// NOTE: This property will be deprecated in a future release. Use nextFocusedItem instead.
  weak var nextFocusedView: @sil_weak UIView? { get }

  /// The focus heading in which the update is occurring.
  var focusHeading: UIFocusHeading { get }
  init()
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIFocusSystem.didUpdateNotification")
let UIFocusDidUpdateNotification: NSNotification.Name
extension UIFocusSystem {
  @available(iOS 11.0, *)
  class let didUpdateNotification: NSNotification.Name
  @available(iOS 11.0, *)
  class let movementDidFailNotification: NSNotification.Name
  @available(iOS 11.0, *)
  class let focusUpdateContextUserInfoKey: String
  @available(iOS 11.0, *)
  class let animationCoordinatorUserInfoKey: String
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIFocusSystem.movementDidFailNotification")
let UIFocusMovementDidFailNotification: NSNotification.Name
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIFocusSystem.focusUpdateContextUserInfoKey")
let UIFocusUpdateContextKey: String
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIFocusSystem.animationCoordinatorUserInfoKey")
let UIFocusUpdateAnimationCoordinatorKey: String

/// Sound identifier for disabling sound during a focus update.
@available(swift, obsoleted: 3, renamed: "UIFocusSoundIdentifier.none")
@available(iOS, unavailable)
let UIFocusSoundIdentifierNone: UIFocusSoundIdentifier
extension UIFocusSoundIdentifier {

  /// Sound identifier for disabling sound during a focus update.
  @available(iOS, unavailable)
  static let none: UIFocusSoundIdentifier

  /// Sound identifier for playing the default sound during a focus update.
  @available(iOS, unavailable)
  static let `default`: UIFocusSoundIdentifier
}

/// Sound identifier for playing the default sound during a focus update.
@available(swift, obsoleted: 3, renamed: "UIFocusSoundIdentifier.default")
@available(iOS, unavailable)
let UIFocusSoundIdentifierDefault: UIFocusSoundIdentifier
