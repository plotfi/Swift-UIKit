@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIControl.Event")
typealias UIControlEvents = UIControl.Event
extension UIControl {
  struct Event : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIControl.Event
    typealias ArrayLiteralElement = UIControl.Event
    static var touchDown: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchDown")
    static var TouchDown: UIControl.Event { get }
    static var touchDownRepeat: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchDownRepeat")
    static var TouchDownRepeat: UIControl.Event { get }
    static var touchDragInside: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchDragInside")
    static var TouchDragInside: UIControl.Event { get }
    static var touchDragOutside: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchDragOutside")
    static var TouchDragOutside: UIControl.Event { get }
    static var touchDragEnter: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchDragEnter")
    static var TouchDragEnter: UIControl.Event { get }
    static var touchDragExit: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchDragExit")
    static var TouchDragExit: UIControl.Event { get }
    static var touchUpInside: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchUpInside")
    static var TouchUpInside: UIControl.Event { get }
    static var touchUpOutside: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchUpOutside")
    static var TouchUpOutside: UIControl.Event { get }
    static var touchCancel: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "touchCancel")
    static var TouchCancel: UIControl.Event { get }
    static var valueChanged: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "valueChanged")
    static var ValueChanged: UIControl.Event { get }
    @available(iOS 9.0, *)
    static var primaryActionTriggered: UIControl.Event { get }
    @available(iOS 9.0, *)
    @available(swift, obsoleted: 3, renamed: "primaryActionTriggered")
    static var PrimaryActionTriggered: UIControl.Event { get }
    @available(iOS 14.0, *)
    static var menuActionTriggered: UIControl.Event { get }
    @available(iOS 14.0, *)
    @available(swift, obsoleted: 3, renamed: "menuActionTriggered")
    static var MenuActionTriggered: UIControl.Event { get }
    static var editingDidBegin: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "editingDidBegin")
    static var EditingDidBegin: UIControl.Event { get }
    static var editingChanged: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "editingChanged")
    static var EditingChanged: UIControl.Event { get }
    static var editingDidEnd: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "editingDidEnd")
    static var EditingDidEnd: UIControl.Event { get }
    static var editingDidEndOnExit: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "editingDidEndOnExit")
    static var EditingDidEndOnExit: UIControl.Event { get }
    static var allTouchEvents: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "allTouchEvents")
    static var AllTouchEvents: UIControl.Event { get }
    static var allEditingEvents: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "allEditingEvents")
    static var AllEditingEvents: UIControl.Event { get }
    static var applicationReserved: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "applicationReserved")
    static var ApplicationReserved: UIControl.Event { get }
    static var systemReserved: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "systemReserved")
    static var SystemReserved: UIControl.Event { get }
    static var allEvents: UIControl.Event { get }
    @available(swift, obsoleted: 3, renamed: "allEvents")
    static var AllEvents: UIControl.Event { get }
  }
  enum ContentVerticalAlignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case center
    @available(swift, obsoleted: 3, renamed: "center")
    static var Center: UIControl.ContentVerticalAlignment { get }
    case top
    @available(swift, obsoleted: 3, renamed: "top")
    static var Top: UIControl.ContentVerticalAlignment { get }
    case bottom
    @available(swift, obsoleted: 3, renamed: "bottom")
    static var Bottom: UIControl.ContentVerticalAlignment { get }
    case fill
    @available(swift, obsoleted: 3, renamed: "fill")
    static var Fill: UIControl.ContentVerticalAlignment { get }
  }
  enum ContentHorizontalAlignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case center
    @available(swift, obsoleted: 3, renamed: "center")
    static var Center: UIControl.ContentHorizontalAlignment { get }
    case left
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UIControl.ContentHorizontalAlignment { get }
    case right
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UIControl.ContentHorizontalAlignment { get }
    case fill
    @available(swift, obsoleted: 3, renamed: "fill")
    static var Fill: UIControl.ContentHorizontalAlignment { get }
    @available(iOS 11.0, *)
    case leading
    @available(iOS 11.0, *)
    @available(swift, obsoleted: 3, renamed: "leading")
    static var Leading: UIControl.ContentHorizontalAlignment { get }
    @available(iOS 11.0, *)
    case trailing
    @available(iOS 11.0, *)
    @available(swift, obsoleted: 3, renamed: "trailing")
    static var Trailing: UIControl.ContentHorizontalAlignment { get }
  }
  struct State : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIControl.State
    typealias ArrayLiteralElement = UIControl.State
    static var normal: UIControl.State { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "normal")
    static var Normal: UIControl.State { get }
    static var highlighted: UIControl.State { get }
    @available(swift, obsoleted: 3, renamed: "highlighted")
    static var Highlighted: UIControl.State { get }
    static var disabled: UIControl.State { get }
    @available(swift, obsoleted: 3, renamed: "disabled")
    static var Disabled: UIControl.State { get }
    static var selected: UIControl.State { get }
    @available(swift, obsoleted: 3, renamed: "selected")
    static var Selected: UIControl.State { get }
    @available(iOS 9.0, *)
    static var focused: UIControl.State { get }
    @available(iOS 9.0, *)
    @available(swift, obsoleted: 3, renamed: "focused")
    static var Focused: UIControl.State { get }
    static var application: UIControl.State { get }
    @available(swift, obsoleted: 3, renamed: "application")
    static var Application: UIControl.State { get }
    static var reserved: UIControl.State { get }
    @available(swift, obsoleted: 3, renamed: "reserved")
    static var Reserved: UIControl.State { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIControl.ContentVerticalAlignment")
typealias UIControlContentVerticalAlignment = UIControl.ContentVerticalAlignment
@available(swift, obsoleted: 4.2, renamed: "UIControl.ContentHorizontalAlignment")
typealias UIControlContentHorizontalAlignment = UIControl.ContentHorizontalAlignment
@available(swift, obsoleted: 4.2, renamed: "UIControl.State")
typealias UIControlState = UIControl.State
@available(iOS 2.0, *)
class UIControl : UIView {
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  var isSelected: Bool
  @available(swift, obsoleted: 3, renamed: "isSelected")
  var selected: Bool
  var isHighlighted: Bool
  @available(swift, obsoleted: 3, renamed: "isHighlighted")
  var highlighted: Bool
  var contentVerticalAlignment: UIControl.ContentVerticalAlignment
  var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment
  var effectiveContentHorizontalAlignment: UIControl.ContentHorizontalAlignment { get }
  var state: UIControl.State { get }
  var isTracking: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isTracking")
  var tracking: Bool { get }
  var isTouchInside: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isTouchInside")
  var touchInside: Bool { get }
  func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool
  @available(swift, obsoleted: 3, renamed: "beginTracking(_:with:)")
  func beginTrackingWithTouch(_ touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool
  @available(swift, obsoleted: 3, renamed: "continueTracking(_:with:)")
  func continueTrackingWithTouch(_ touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTracking(_ touch: UITouch?, with event: UIEvent?)
  @available(swift, obsoleted: 3, renamed: "endTracking(_:with:)")
  func endTrackingWithTouch(_ touch: UITouch?, withEvent event: UIEvent?)
  func cancelTracking(with event: UIEvent?)
  @available(swift, obsoleted: 3, renamed: "cancelTracking(with:)")
  func cancelTrackingWithEvent(_ event: UIEvent?)
  func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event)
  @available(swift, obsoleted: 3, renamed: "addTarget(_:action:for:)")
  func addTarget(_ target: Any?, action: Selector, forControlEvents controlEvents: UIControl.Event)
  func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event)
  @available(swift, obsoleted: 3, renamed: "removeTarget(_:action:for:)")
  func removeTarget(_ target: Any?, action: Selector?, forControlEvents controlEvents: UIControl.Event)

  /// Adds the UIAction to a given event. UIActions are uniqued based on their identifier, and subsequent actions with the same identifier replace previously added actions. You may add multiple UIActions for corresponding controlEvents, and you may add the same action to multiple controlEvents.
  @available(iOS 14.0, *)
  func addAction(_ action: UIAction, for controlEvents: UIControl.Event)

  /// Adds the UIAction to a given event. UIActions are uniqued based on their identifier, and subsequent actions with the same identifier replace previously added actions. You may add multiple UIActions for corresponding controlEvents, and you may add the same action to multiple controlEvents.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "addAction(_:for:)")
  func addAction(_ action: UIAction, forControlEvents controlEvents: UIControl.Event)

  /// Removes the action from the set of passed control events.
  @available(iOS 14.0, *)
  func removeAction(_ action: UIAction, for controlEvents: UIControl.Event)

  /// Removes the action from the set of passed control events.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "removeAction(_:for:)")
  func removeAction(_ action: UIAction, forControlEvents controlEvents: UIControl.Event)

  /// Removes the action with the provided identifier from the set of passed control events.
  @available(iOS 14.0, *)
  func removeAction(identifiedBy actionIdentifier: UIAction.Identifier, for controlEvents: UIControl.Event)

  /// Removes the action with the provided identifier from the set of passed control events.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "removeAction(identifiedBy:for:)")
  func removeActionForIdentifier(_ actionIdentifier: UIAction.Identifier, forControlEvents controlEvents: UIControl.Event)
  var allTargets: Set<AnyHashable> { get }
  var allControlEvents: UIControl.Event { get }
  func actions(forTarget target: Any?, forControlEvent controlEvent: UIControl.Event) -> [String]?
  @available(swift, obsoleted: 3, renamed: "actions(forTarget:forControlEvent:)")
  func actionsForTarget(_ target: Any?, forControlEvent controlEvent: UIControl.Event) -> [String]?

  /// Iterate over the event handlers installed on this control at the time this method is called. For each call, either actionHandler or action will be non-nil. controlEvents is always non-zero. Setting *stop to YES will terminate the enumeration early. It is legal to manipulate the control's event handlers within the block.
  @available(iOS 14.0, *)
  func __enumerateEventHandlers(_ iterator: (UIAction?, Any?, Selector?, UIControl.Event, UnsafeMutablePointer<ObjCBool>) -> Void)

  /// Dispatch the target-action pair. This method is called repeatedly by -sendActionsForControlEvents: and is a point at which you can observe or override behavior.
  func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?)

  /// Dispatch the target-action pair. This method is called repeatedly by -sendActionsForControlEvents: and is a point at which you can observe or override behavior.
  @available(swift, obsoleted: 3, renamed: "sendAction(_:to:for:)")
  func sendAction(_ action: Selector, to target: Any?, forEvent event: UIEvent?)

  /// Like -sendAction:to:forEvent:, this method is called by -sendActionsForControlEvents:. You may override this method to observe or modify behavior. If you override this method, you should call super precisely once to dispatch the action, or not call super to suppress sending that action.
  @available(iOS 14.0, *)
  func sendAction(_ action: UIAction)

  /// send all actions associated with the given control events
  func sendActions(for controlEvents: UIControl.Event)

  /// send all actions associated with the given control events
  @available(swift, obsoleted: 3, renamed: "sendActions(for:)")
  func sendActionsForControlEvents(_ controlEvents: UIControl.Event)

  /// Returns a UIContextMenuInteraction with this control set as its delegate. Before constructing the UIContextMenuInteraction, UIControl verifies 'self' is a viable delegate. See 'Implementing UIControl Menus' below for more details.
  @available(iOS 14.0, *)
  var contextMenuInteraction: UIContextMenuInteraction? { get }

  /// Specifies if the context menu interaction is enabled. NO by default.
  @available(iOS 14.0, *)
  var isContextMenuInteractionEnabled: Bool

  /// Specifies if the context menu interaction is enabled. NO by default.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "isContextMenuInteractionEnabled")
  var contextMenuInteractionEnabled: Bool

  /// If the contextMenuInteraction is the primary action of the control, invoked on touch-down. NO by default.
  @available(iOS 14.0, *)
  var showsMenuAsPrimaryAction: Bool

  /// Return a point in this control's coordinate space to which to attach the given configuration's menu.
  @available(iOS 14.0, *)
  func menuAttachmentPoint(for configuration: UIContextMenuConfiguration) -> CGPoint

  /// Return a point in this control's coordinate space to which to attach the given configuration's menu.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "menuAttachmentPoint(for:)")
  func menuAttachmentPointForConfiguration(_ configuration: UIContextMenuConfiguration) -> CGPoint
  convenience init()
}

extension UIControl {
  @available(iOS 14.0, *)
  func enumerateEventHandlers(_ iterator: (UIAction?, (Any?, Selector)?, UIControl.Event, inout Bool) -> Void)
}

/// Implementing UIControl Menus
/// UIControl will only create a UIContextMenuInteraction if you've created a subclass of UIControl with a minimum viable delegate implementation. UIControl extends the contract of UIContextMenuInteractionDelegate for these methods, see each method for more detail.
extension UIControl : UIContextMenuInteractionDelegate {

  /// An override is required for UIControl to create a UIContextMenuInteraction. Direct UIControl subclasses do not need to call super.
  @available(iOS 14.0, *)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration?

  /// Direct UIControl subclasses do not need to call super.
  @available(iOS 14.0, *)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForHighlightingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /// Direct UIControl subclasses do not need to call super.
  @available(iOS 14.0, *)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForDismissingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /// UIControl subclasses should always call super.
  @available(iOS 14.0, *)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuFor configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /// UIControl subclasses should always call super.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "contextMenuInteraction(_:willDisplayMenuFor:animator:)")
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuForConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /// UIControl subclasses should always call super.
  @available(iOS 14.0, *)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndFor configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /// UIControl subclasses should always call super.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "contextMenuInteraction(_:willEndFor:animator:)")
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndForConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /// UIControl based menus do not display previews, so this method will not be called even if implemented. UIControl does not have an implementation.
  @available(*, unavailable)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /// UIControl based menus do not display previews, so this method will not be called even if implemented. UIControl does not have an implementation.
  @available(swift, obsoleted: 3, renamed: "contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)")
  @available(*, unavailable)
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willPerformPreviewActionForMenuWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)
}
