@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIView.AnimationCurve")
typealias UIViewAnimationCurve = UIView.AnimationCurve
extension UIView {
  enum AnimationCurve : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case easeInOut
    @available(swift, obsoleted: 3, renamed: "easeInOut")
    static var EaseInOut: UIView.AnimationCurve { get }
    case easeIn
    @available(swift, obsoleted: 3, renamed: "easeIn")
    static var EaseIn: UIView.AnimationCurve { get }
    case easeOut
    @available(swift, obsoleted: 3, renamed: "easeOut")
    static var EaseOut: UIView.AnimationCurve { get }
    case linear
    @available(swift, obsoleted: 3, renamed: "linear")
    static var Linear: UIView.AnimationCurve { get }
  }
  enum ContentMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case scaleToFill
    @available(swift, obsoleted: 3, renamed: "scaleToFill")
    static var ScaleToFill: UIView.ContentMode { get }
    case scaleAspectFit
    @available(swift, obsoleted: 3, renamed: "scaleAspectFit")
    static var ScaleAspectFit: UIView.ContentMode { get }
    case scaleAspectFill
    @available(swift, obsoleted: 3, renamed: "scaleAspectFill")
    static var ScaleAspectFill: UIView.ContentMode { get }
    case redraw
    @available(swift, obsoleted: 3, renamed: "redraw")
    static var Redraw: UIView.ContentMode { get }
    case center
    @available(swift, obsoleted: 3, renamed: "center")
    static var Center: UIView.ContentMode { get }
    case top
    @available(swift, obsoleted: 3, renamed: "top")
    static var Top: UIView.ContentMode { get }
    case bottom
    @available(swift, obsoleted: 3, renamed: "bottom")
    static var Bottom: UIView.ContentMode { get }
    case left
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UIView.ContentMode { get }
    case right
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UIView.ContentMode { get }
    case topLeft
    @available(swift, obsoleted: 3, renamed: "topLeft")
    static var TopLeft: UIView.ContentMode { get }
    case topRight
    @available(swift, obsoleted: 3, renamed: "topRight")
    static var TopRight: UIView.ContentMode { get }
    case bottomLeft
    @available(swift, obsoleted: 3, renamed: "bottomLeft")
    static var BottomLeft: UIView.ContentMode { get }
    case bottomRight
    @available(swift, obsoleted: 3, renamed: "bottomRight")
    static var BottomRight: UIView.ContentMode { get }
  }
  enum AnimationTransition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIView.AnimationTransition { get }
    case flipFromLeft
    @available(swift, obsoleted: 3, renamed: "flipFromLeft")
    static var FlipFromLeft: UIView.AnimationTransition { get }
    case flipFromRight
    @available(swift, obsoleted: 3, renamed: "flipFromRight")
    static var FlipFromRight: UIView.AnimationTransition { get }
    case curlUp
    @available(swift, obsoleted: 3, renamed: "curlUp")
    static var CurlUp: UIView.AnimationTransition { get }
    case curlDown
    @available(swift, obsoleted: 3, renamed: "curlDown")
    static var CurlDown: UIView.AnimationTransition { get }
  }
  struct AutoresizingMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIView.AutoresizingMask
    typealias ArrayLiteralElement = UIView.AutoresizingMask
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var none: UIView.AutoresizingMask { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIView.AutoresizingMask { get }
    static var flexibleLeftMargin: UIView.AutoresizingMask { get }
    @available(swift, obsoleted: 3, renamed: "flexibleLeftMargin")
    static var FlexibleLeftMargin: UIView.AutoresizingMask { get }
    static var flexibleWidth: UIView.AutoresizingMask { get }
    @available(swift, obsoleted: 3, renamed: "flexibleWidth")
    static var FlexibleWidth: UIView.AutoresizingMask { get }
    static var flexibleRightMargin: UIView.AutoresizingMask { get }
    @available(swift, obsoleted: 3, renamed: "flexibleRightMargin")
    static var FlexibleRightMargin: UIView.AutoresizingMask { get }
    static var flexibleTopMargin: UIView.AutoresizingMask { get }
    @available(swift, obsoleted: 3, renamed: "flexibleTopMargin")
    static var FlexibleTopMargin: UIView.AutoresizingMask { get }
    static var flexibleHeight: UIView.AutoresizingMask { get }
    @available(swift, obsoleted: 3, renamed: "flexibleHeight")
    static var FlexibleHeight: UIView.AutoresizingMask { get }
    static var flexibleBottomMargin: UIView.AutoresizingMask { get }
    @available(swift, obsoleted: 3, renamed: "flexibleBottomMargin")
    static var FlexibleBottomMargin: UIView.AutoresizingMask { get }
  }
  @available(iOS 4.0, *)
  struct AnimationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIView.AnimationOptions
    typealias ArrayLiteralElement = UIView.AnimationOptions
    static var layoutSubviews: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "layoutSubviews")
    static var LayoutSubviews: UIView.AnimationOptions { get }
    static var allowUserInteraction: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowUserInteraction")
    static var AllowUserInteraction: UIView.AnimationOptions { get }
    static var beginFromCurrentState: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "beginFromCurrentState")
    static var BeginFromCurrentState: UIView.AnimationOptions { get }
    static var `repeat`: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "repeat")
    static var Repeat: UIView.AnimationOptions { get }
    static var autoreverse: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "autoreverse")
    static var Autoreverse: UIView.AnimationOptions { get }
    static var overrideInheritedDuration: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "overrideInheritedDuration")
    static var OverrideInheritedDuration: UIView.AnimationOptions { get }
    static var overrideInheritedCurve: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "overrideInheritedCurve")
    static var OverrideInheritedCurve: UIView.AnimationOptions { get }
    static var allowAnimatedContent: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowAnimatedContent")
    static var AllowAnimatedContent: UIView.AnimationOptions { get }
    static var showHideTransitionViews: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "showHideTransitionViews")
    static var ShowHideTransitionViews: UIView.AnimationOptions { get }
    static var overrideInheritedOptions: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "overrideInheritedOptions")
    static var OverrideInheritedOptions: UIView.AnimationOptions { get }
    static var curveEaseInOut: UIView.AnimationOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "curveEaseInOut")
    static var CurveEaseInOut: UIView.AnimationOptions { get }
    static var curveEaseIn: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "curveEaseIn")
    static var CurveEaseIn: UIView.AnimationOptions { get }
    static var curveEaseOut: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "curveEaseOut")
    static var CurveEaseOut: UIView.AnimationOptions { get }
    static var curveLinear: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "curveLinear")
    static var CurveLinear: UIView.AnimationOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var transitionNone: UIView.AnimationOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "transitionNone")
    static var TransitionNone: UIView.AnimationOptions { get }
    static var transitionFlipFromLeft: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionFlipFromLeft")
    static var TransitionFlipFromLeft: UIView.AnimationOptions { get }
    static var transitionFlipFromRight: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionFlipFromRight")
    static var TransitionFlipFromRight: UIView.AnimationOptions { get }
    static var transitionCurlUp: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionCurlUp")
    static var TransitionCurlUp: UIView.AnimationOptions { get }
    static var transitionCurlDown: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionCurlDown")
    static var TransitionCurlDown: UIView.AnimationOptions { get }
    static var transitionCrossDissolve: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionCrossDissolve")
    static var TransitionCrossDissolve: UIView.AnimationOptions { get }
    static var transitionFlipFromTop: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionFlipFromTop")
    static var TransitionFlipFromTop: UIView.AnimationOptions { get }
    static var transitionFlipFromBottom: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "transitionFlipFromBottom")
    static var TransitionFlipFromBottom: UIView.AnimationOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var preferredFramesPerSecondDefault: UIView.AnimationOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "preferredFramesPerSecondDefault")
    static var PreferredFramesPerSecondDefault: UIView.AnimationOptions { get }
    static var preferredFramesPerSecond60: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "preferredFramesPerSecond60")
    static var PreferredFramesPerSecond60: UIView.AnimationOptions { get }
    static var preferredFramesPerSecond30: UIView.AnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "preferredFramesPerSecond30")
    static var PreferredFramesPerSecond30: UIView.AnimationOptions { get }
  }
  @available(iOS 7.0, *)
  struct KeyframeAnimationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIView.KeyframeAnimationOptions
    typealias ArrayLiteralElement = UIView.KeyframeAnimationOptions
    static var layoutSubviews: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "layoutSubviews")
    static var LayoutSubviews: UIView.KeyframeAnimationOptions { get }
    static var allowUserInteraction: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "allowUserInteraction")
    static var AllowUserInteraction: UIView.KeyframeAnimationOptions { get }
    static var beginFromCurrentState: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "beginFromCurrentState")
    static var BeginFromCurrentState: UIView.KeyframeAnimationOptions { get }
    static var `repeat`: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "repeat")
    static var Repeat: UIView.KeyframeAnimationOptions { get }
    static var autoreverse: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "autoreverse")
    static var Autoreverse: UIView.KeyframeAnimationOptions { get }
    static var overrideInheritedDuration: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "overrideInheritedDuration")
    static var OverrideInheritedDuration: UIView.KeyframeAnimationOptions { get }
    static var overrideInheritedOptions: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "overrideInheritedOptions")
    static var OverrideInheritedOptions: UIView.KeyframeAnimationOptions { get }
    static var calculationModeLinear: UIView.KeyframeAnimationOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "calculationModeLinear")
    static var CalculationModeLinear: UIView.KeyframeAnimationOptions { get }
    static var calculationModeDiscrete: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "calculationModeDiscrete")
    static var CalculationModeDiscrete: UIView.KeyframeAnimationOptions { get }
    static var calculationModePaced: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "calculationModePaced")
    static var CalculationModePaced: UIView.KeyframeAnimationOptions { get }
    static var calculationModeCubic: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "calculationModeCubic")
    static var CalculationModeCubic: UIView.KeyframeAnimationOptions { get }
    static var calculationModeCubicPaced: UIView.KeyframeAnimationOptions { get }
    @available(swift, obsoleted: 3, renamed: "calculationModeCubicPaced")
    static var CalculationModeCubicPaced: UIView.KeyframeAnimationOptions { get }
  }
  @available(iOS 7.0, *)
  enum SystemAnimation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case delete
    @available(swift, obsoleted: 3, renamed: "delete")
    static var Delete: UIView.SystemAnimation { get }
  }
  @available(iOS 7.0, *)
  enum TintAdjustmentMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UIView.TintAdjustmentMode { get }
    case normal
    @available(swift, obsoleted: 3, renamed: "normal")
    static var Normal: UIView.TintAdjustmentMode { get }
    case dimmed
    @available(swift, obsoleted: 3, renamed: "dimmed")
    static var Dimmed: UIView.TintAdjustmentMode { get }
  }
  @available(iOS 6.0, *)
  class let noIntrinsicMetric: CGFloat
  @available(iOS 6.0, *)
  class let layoutFittingCompressedSize: CGSize
  @available(iOS 6.0, *)
  class let layoutFittingExpandedSize: CGSize
}
@available(swift, obsoleted: 4.2, renamed: "UIView.ContentMode")
typealias UIViewContentMode = UIView.ContentMode
@available(swift, obsoleted: 4.2, renamed: "UIView.AnimationTransition")
typealias UIViewAnimationTransition = UIView.AnimationTransition
@available(swift, obsoleted: 4.2, renamed: "UIView.AutoresizingMask")
typealias UIViewAutoresizing = UIView.AutoresizingMask
@available(iOS 4.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.AnimationOptions")
typealias UIViewAnimationOptions = UIView.AnimationOptions
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.KeyframeAnimationOptions")
typealias UIViewKeyframeAnimationOptions = UIView.KeyframeAnimationOptions
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.SystemAnimation")
typealias UISystemAnimation = UIView.SystemAnimation
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.TintAdjustmentMode")
typealias UIViewTintAdjustmentMode = UIView.TintAdjustmentMode
@available(iOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UISemanticContentAttribute { get }
  case playback
  @available(swift, obsoleted: 3, renamed: "playback")
  static var Playback: UISemanticContentAttribute { get }
  case spatial
  @available(swift, obsoleted: 3, renamed: "spatial")
  static var Spatial: UISemanticContentAttribute { get }
  case forceLeftToRight
  @available(swift, obsoleted: 3, renamed: "forceLeftToRight")
  static var ForceLeftToRight: UISemanticContentAttribute { get }
  case forceRightToLeft
  @available(swift, obsoleted: 3, renamed: "forceRightToLeft")
  static var ForceRightToLeft: UISemanticContentAttribute { get }
}
protocol UICoordinateSpace : NSObjectProtocol {
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "convert(_:to:)")
  func convertPoint(_ point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "convert(_:from:)")
  func convertPoint(_ point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "convert(_:to:)")
  func convertRect(_ rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "convert(_:from:)")
  func convertRect(_ rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  var bounds: CGRect { get }
}
@available(iOS 2.0, *)
class UIView : UIResponder, NSCoding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusItem, UIFocusItemContainer, CALayerDelegate {
  class var layerClass: AnyClass { get }
  init(frame: CGRect)
  init?(coder: NSCoder)
  var isUserInteractionEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isUserInteractionEnabled")
  var userInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(iOS 9.0, *)
  var canBecomeFocused: Bool { get }
  @available(iOS 9.0, *)
  var isFocused: Bool { get }
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "isFocused")
  var focused: Bool { get }

  /// The identifier of the focus group that this view belongs to. If this is nil, subviews inherit their superview's focus group.
  @available(iOS 14.0, *)
  var focusGroupIdentifier: String?
  @available(iOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  @available(iOS 9.0, *)
  class func userInterfaceLayoutDirection(for attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "userInterfaceLayoutDirection(for:)")
  class func userInterfaceLayoutDirectionForSemanticContentAttribute(_ attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(iOS 10.0, *)
  class func userInterfaceLayoutDirection(for semanticContentAttribute: UISemanticContentAttribute, relativeTo layoutDirection: UIUserInterfaceLayoutDirection) -> UIUserInterfaceLayoutDirection
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "userInterfaceLayoutDirection(for:relativeTo:)")
  class func userInterfaceLayoutDirectionForSemanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute, relativeToLayoutDirection layoutDirection: UIUserInterfaceLayoutDirection) -> UIUserInterfaceLayoutDirection
  @available(iOS 10.0, *)
  var effectiveUserInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  convenience init()

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /// The preferred focus environments define where to search for the default focused item in an environment, such as when focus updates programmatically.
  /// Starting from the target environment, each preferred focus environment is recursively searched in the order of the array until an eligible, focusable item is found.
  /// Preferred focus environments can include focusable and non-focusable items, in addition to non-item environments. Returning an empty array is equivalent to returning an array containing only 'self'.
  @available(iOS 9.0, *)
  var preferredFocusEnvironments: [UIFocusEnvironment] { get }

  /// The parent focus environment of this environment, or nil if no parent exists.
  /// NOTE: If you implement this method, you must return a non-nil value for parent focus environment, otherwise your focus environment will not participate in focus interactions.
  @available(iOS 12.0, *)
  weak var parentFocusEnvironment: @sil_weak UIFocusEnvironment? { get }

  /// The container of any child focus items in this focus environment, or nil if no container exists.
  @available(iOS 12.0, *)
  var focusItemContainer: UIFocusItemContainer? { get }
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// The coordinate space of the focus items contained in this container. The focus items returned by focusItemsInRect: should report their frames in this coordinate space.
  /// If you are implementing this protocol, you may find it convenient to return the UIScreen as your coordinate space, and ensure that your contained items report their frames in screen space.
  /// Similarly, you might find that your focus items' containing UIView or UIWindow is the most convenient coordinate space to use.
  /// You may also choose to implement your own object that conforms to UICoordinateSpace, if that is the most natural solution for your architecture.
  @available(iOS 12.0, *)
  var coordinateSpace: UICoordinateSpace { get }
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

  /** To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(_ rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect

  /// Called whenever this focus item is hinting to the user a focus movement might occur.
  /// The provided object is mutated by the focus engine whenever the user's finger moves.
  @available(iOS 12.0, *)
  func didHintFocusMovement(_ hint: UIFocusMovementHint)

  /// Marks this environment as needing a focus update, which if accepted will attempt to reset focus to this environment, or one of its preferred focus environments, on the next update cycle. If this environment does not currently contain the focused item, then calling this method has no effect. If a parent of this environment is also requesting focus, then this environment's request is rejected in favor of the parent's.
  /// NOTE: If you provide your own implementation, it must call `[[UIFocusSystem focusSystemForEnvironment:self] requestFocusUpdateToEnvironment:self]`;
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment or one of its preferred focus environments.
  /// NOTE: If you provide your own implementation, it must call `[[UIFocusSystem focusSystemForEnvironment:self] updateFocusIfNeeded];`.
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(iOS 9.0, *)
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focused item has been updated to a new item. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(iOS 9.0, *)
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)

  /// Specifies an identifier corresponding to a sound that should be played for a focus update.
  /// Return UIFocusSoundIdentifierNone to opt out of sounds, UIFocusSoundIdentifierDefault for the system
  /// default sounds, a previously registered identifier for a custom sound, or nil to defer the decision
  /// to the parent.
  @available(iOS, unavailable)
  func soundIdentifierForFocusUpdate(in context: UIFocusUpdateContext) -> UIFocusSoundIdentifier?

  /// Returns an array of all focus items within this container that intersect with the provided rect. `rect` is expressed in `coordinateSpace`.
  @available(iOS 12.0, *)
  func focusItems(in rect: CGRect) -> [UIFocusItem]
  @available(iOS 2.0, *)
  func display(_ layer: CALayer)
  @available(iOS 2.0, *)
  func draw(_ layer: CALayer, in ctx: CGContext)
  @available(iOS 10.0, *)
  func layerWillDraw(_ layer: CALayer)
  @available(iOS 2.0, *)
  func layoutSublayers(of layer: CALayer)
  @available(iOS 2.0, *)
  func action(for layer: CALayer, forKey event: String) -> CAAction?
}

extension UIView : __DefaultCustomPlaygroundQuickLookable {
  @available(*, deprecated, message: "UIView._defaultCustomPlaygroundQuickLook will be removed in a future Swift version")
  var _defaultCustomPlaygroundQuickLook: PlaygroundQuickLook { get }
}
extension UIView {
  var frame: CGRect
  var bounds: CGRect
  var center: CGPoint
  var transform: CGAffineTransform
  @available(iOS 13.0, *)
  var transform3D: CATransform3D
  @available(iOS 4.0, *)
  var contentScaleFactor: CGFloat
  var isMultipleTouchEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isMultipleTouchEnabled")
  var multipleTouchEnabled: Bool
  var isExclusiveTouch: Bool
  @available(swift, obsoleted: 3, renamed: "isExclusiveTouch")
  var exclusiveTouch: Bool
  func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView?
  @available(swift, obsoleted: 3, renamed: "hitTest(_:with:)")
  func hitTest(_ point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func point(inside point: CGPoint, with event: UIEvent?) -> Bool
  @available(swift, obsoleted: 3, renamed: "point(inside:with:)")
  func pointInside(_ point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convert(_ point: CGPoint, to view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "convert(_:to:)")
  func convertPoint(_ point: CGPoint, toView view: UIView?) -> CGPoint
  func convert(_ point: CGPoint, from view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "convert(_:from:)")
  func convertPoint(_ point: CGPoint, fromView view: UIView?) -> CGPoint
  func convert(_ rect: CGRect, to view: UIView?) -> CGRect
  @available(swift, obsoleted: 3, renamed: "convert(_:to:)")
  func convertRect(_ rect: CGRect, toView view: UIView?) -> CGRect
  func convert(_ rect: CGRect, from view: UIView?) -> CGRect
  @available(swift, obsoleted: 3, renamed: "convert(_:from:)")
  func convertRect(_ rect: CGRect, fromView view: UIView?) -> CGRect
  var autoresizesSubviews: Bool
  var autoresizingMask: UIView.AutoresizingMask
  func sizeThatFits(_ size: CGSize) -> CGSize
  func sizeToFit()
}
extension UIView {
  var superview: UIView? { get }
  var subviews: [UIView] { get }
  var window: UIWindow? { get }
  func removeFromSuperview()
  func insertSubview(_ view: UIView, at index: Int)
  @available(swift, obsoleted: 3, renamed: "insertSubview(_:at:)")
  func insertSubview(_ view: UIView, atIndex index: Int)
  func exchangeSubview(at index1: Int, withSubviewAt index2: Int)
  @available(swift, obsoleted: 3, renamed: "exchangeSubview(at:withSubviewAt:)")
  func exchangeSubviewAtIndex(_ index1: Int, withSubviewAtIndex index2: Int)
  func addSubview(_ view: UIView)
  func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewToFront(_ view: UIView)
  @available(swift, obsoleted: 4.2, renamed: "bringSubviewToFront(_:)")
  func bringSubview(toFront view: UIView)
  func sendSubviewToBack(_ view: UIView)
  @available(swift, obsoleted: 4.2, renamed: "sendSubviewToBack(_:)")
  func sendSubview(toBack view: UIView)
  func didAddSubview(_ subview: UIView)
  func willRemoveSubview(_ subview: UIView)
  func willMove(toSuperview newSuperview: UIView?)
  @available(swift, obsoleted: 3, renamed: "willMove(toSuperview:)")
  func willMoveToSuperview(_ newSuperview: UIView?)
  func didMoveToSuperview()
  func willMove(toWindow newWindow: UIWindow?)
  @available(swift, obsoleted: 3, renamed: "willMove(toWindow:)")
  func willMoveToWindow(_ newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendant(of view: UIView) -> Bool
  @available(swift, obsoleted: 3, renamed: "isDescendant(of:)")
  func isDescendantOfView(_ view: UIView) -> Bool
  func viewWithTag(_ tag: Int) -> UIView?
  func setNeedsLayout()
  func layoutIfNeeded()
  func layoutSubviews()
  @available(iOS 8.0, *)
  var layoutMargins: UIEdgeInsets
  @available(iOS 11.0, *)
  var directionalLayoutMargins: NSDirectionalEdgeInsets
  @available(iOS 8.0, *)
  var preservesSuperviewLayoutMargins: Bool
  @available(iOS 11.0, *)
  var insetsLayoutMarginsFromSafeArea: Bool
  @available(iOS 8.0, *)
  func layoutMarginsDidChange()
  @available(iOS 11.0, *)
  var safeAreaInsets: UIEdgeInsets { get }
  @available(iOS 11.0, *)
  func safeAreaInsetsDidChange()
  @available(iOS 9.0, *)
  var layoutMarginsGuide: UILayoutGuide { get }

  /// This content guide provides a layout area that you can use to place text and related content whose width should generally be constrained to a size that is easy for the user to read. This guide provides a centered region that you can place content within to get this behavior for this view.
  @available(iOS 9.0, *)
  var readableContentGuide: UILayoutGuide { get }
  @available(iOS 11.0, *)
  var safeAreaLayoutGuide: UILayoutGuide { get }
}
extension UIView {
  func draw(_ rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "draw(_:)")
  func drawRect(_ rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplay(_ rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "setNeedsDisplay(_:)")
  func setNeedsDisplayInRect(_ rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var isOpaque: Bool
  @available(swift, obsoleted: 3, renamed: "isOpaque")
  var opaque: Bool
  var clearsContextBeforeDrawing: Bool
  var isHidden: Bool
  @available(swift, obsoleted: 3, renamed: "isHidden")
  var hidden: Bool
  var contentMode: UIView.ContentMode
  @available(iOS, unavailable, introduced: 3.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var contentStretch: CGRect
  @available(iOS 8.0, *)
  var mask: UIView?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "mask")
  var maskView: UIView?
  @available(iOS 7.0, *)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var tintAdjustmentMode: UIView.TintAdjustmentMode
  @available(iOS 7.0, *)
  func tintColorDidChange()
}
extension UIView {
  class func setAnimationsEnabled(_ enabled: Bool)
  class var areAnimationsEnabled: Bool { get }
  @available(iOS 7.0, *)
  class func performWithoutAnimation(_ actionsWithoutAnimation: () -> Void)
  @available(iOS 9.0, *)
  class var inheritedAnimationDuration: TimeInterval { get }
}
extension UIView {
  @available(iOS 4.0, *)
  class func animate(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void) async -> Bool
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "animate(withDuration:delay:options:animations:completion:)")
  class func animateWithDuration(_ duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(withDuration duration: TimeInterval, animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(withDuration duration: TimeInterval, animations: @escaping () -> Void) async -> Bool
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "animate(withDuration:animations:completion:)")
  class func animateWithDuration(_ duration: TimeInterval, animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animate(withDuration duration: TimeInterval, animations: @escaping () -> Void)
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "animate(withDuration:animations:)")
  class func animateWithDuration(_ duration: TimeInterval, animations: @escaping () -> Void)
  @available(iOS 7.0, *)
  class func animate(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func animate(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIView.AnimationOptions = [], animations: @escaping () -> Void) async -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "animate(withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:)")
  class func animateWithDuration(_ duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transition(with view: UIView, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transition(with view: UIView, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?) async -> Bool
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "transition(with:duration:options:animations:completion:)")
  class func transitionWithView(_ view: UIView, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transition(from fromView: UIView, to toView: UIView, duration: TimeInterval, options: UIView.AnimationOptions = [], completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transition(from fromView: UIView, to toView: UIView, duration: TimeInterval, options: UIView.AnimationOptions = []) async -> Bool
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "transition(from:to:duration:options:completion:)")
  class func transitionFromView(_ fromView: UIView, toView: UIView, duration: TimeInterval, options: UIView.AnimationOptions = [], completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func perform(_ animation: UIView.SystemAnimation, on views: [UIView], options: UIView.AnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func perform(_ animation: UIView.SystemAnimation, on views: [UIView], options: UIView.AnimationOptions = [], animations parallelAnimations: (() -> Void)?) async -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "perform(_:on:options:animations:completion:)")
  class func performSystemAnimation(_ animation: UIView.SystemAnimation, onViews views: [UIView], options: UIView.AnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 12.0, *)
  class func modifyAnimations(withRepeatCount count: CGFloat, autoreverses: Bool, animations: () -> Void)
  @available(iOS 12.0, *)
  @available(swift, obsoleted: 3, renamed: "modifyAnimations(withRepeatCount:autoreverses:animations:)")
  class func modifyAnimationsWithRepeatCount(_ count: CGFloat, autoreverses: Bool, animations: () -> Void)
}
extension UIView {
  @available(iOS 7.0, *)
  class func animateKeyframes(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.KeyframeAnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func animateKeyframes(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.KeyframeAnimationOptions = [], animations: @escaping () -> Void) async -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "animateKeyframes(withDuration:delay:options:animations:completion:)")
  class func animateKeyframesWithDuration(_ duration: TimeInterval, delay: TimeInterval, options: UIView.KeyframeAnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func addKeyframe(withRelativeStartTime frameStartTime: Double, relativeDuration frameDuration: Double, animations: @escaping () -> Void)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "addKeyframe(withRelativeStartTime:relativeDuration:animations:)")
  class func addKeyframeWithRelativeStartTime(_ frameStartTime: Double, relativeDuration frameDuration: Double, animations: @escaping () -> Void)
}
extension UIView {
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]?
  @available(iOS 3.2, *)
  func addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer)
  @available(iOS 3.2, *)
  func removeGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer)
  @available(iOS 6.0, *)
  func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {

  /** Begins applying `effect` to the receiver. The effect's emitted keyPath/value pairs will be
      applied to the view's presentation layer.
   
      Animates the transition to the motion effect's values using the present UIView animation
      context. */
  @available(iOS 7.0, *)
  func addMotionEffect(_ effect: UIMotionEffect)

  /** Stops applying `effect` to the receiver. Any affected presentation values will animate to
      their post-removal values using the present UIView animation context. */
  @available(iOS 7.0, *)
  func removeMotionEffect(_ effect: UIMotionEffect)
  @available(iOS 7.0, *)
  var motionEffects: [UIMotionEffect]
}
@available(swift, obsoleted: 4.2, renamed: "NSLayoutConstraint.Axis")
typealias UILayoutConstraintAxis = NSLayoutConstraint.Axis
extension NSLayoutConstraint {
  enum Axis : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case horizontal
    @available(swift, obsoleted: 3, renamed: "horizontal")
    static var Horizontal: NSLayoutConstraint.Axis { get }
    case vertical
    @available(swift, obsoleted: 3, renamed: "vertical")
    static var Vertical: NSLayoutConstraint.Axis { get }
  }
}
extension UIView {
  @available(iOS 6.0, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(iOS 6.0, *)
  func addConstraint(_ constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func addConstraints(_ constraints: [NSLayoutConstraint])
  @available(iOS 6.0, *)
  func removeConstraint(_ constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func removeConstraints(_ constraints: [NSLayoutConstraint])
}
extension UIView {
  @available(iOS 6.0, *)
  func updateConstraintsIfNeeded()
  @available(iOS 6.0, *)
  func updateConstraints()
  @available(iOS 6.0, *)
  func needsUpdateConstraints() -> Bool
  @available(iOS 6.0, *)
  func setNeedsUpdateConstraints()
}
extension UIView {
  @available(iOS 6.0, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(iOS 6.0, *)
  class var requiresConstraintBasedLayout: Bool { get }
}
extension UIView {
  @available(iOS 6.0, *)
  func alignmentRect(forFrame frame: CGRect) -> CGRect
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "alignmentRect(forFrame:)")
  func alignmentRectForFrame(_ frame: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func frame(forAlignmentRect alignmentRect: CGRect) -> CGRect
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "frame(forAlignmentRect:)")
  func frameForAlignmentRect(_ alignmentRect: CGRect) -> CGRect
  @available(iOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(iOS, introduced: 6.0, deprecated: 9.0, message: "Override -viewForFirstBaselineLayout or -viewForLastBaselineLayout as appropriate, instead")
  func forBaselineLayout() -> UIView
  @available(swift, obsoleted: 3, renamed: "forBaselineLayout()")
  @available(iOS, introduced: 6.0, deprecated: 9.0, message: "Override -viewForFirstBaselineLayout or -viewForLastBaselineLayout as appropriate, instead")
  func viewForBaselineLayout() -> UIView
  @available(iOS 9.0, *)
  var forFirstBaselineLayout: UIView { get }
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "forFirstBaselineLayout")
  var viewForFirstBaselineLayout: UIView { get }
  @available(iOS 9.0, *)
  var forLastBaselineLayout: UIView { get }
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "forLastBaselineLayout")
  var viewForLastBaselineLayout: UIView { get }
  @available(iOS 6.0, *)
  var intrinsicContentSize: CGSize { get }
  @available(iOS 6.0, *)
  func invalidateIntrinsicContentSize()
  @available(iOS 6.0, *)
  func contentHuggingPriority(for axis: NSLayoutConstraint.Axis) -> UILayoutPriority
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "contentHuggingPriority(for:)")
  func contentHuggingPriorityForAxis(_ axis: NSLayoutConstraint.Axis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setContentHuggingPriority(_:for:)")
  func setContentHuggingPriority(_ priority: UILayoutPriority, forAxis axis: NSLayoutConstraint.Axis)
  @available(iOS 6.0, *)
  func contentCompressionResistancePriority(for axis: NSLayoutConstraint.Axis) -> UILayoutPriority
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "contentCompressionResistancePriority(for:)")
  func contentCompressionResistancePriorityForAxis(_ axis: NSLayoutConstraint.Axis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setContentCompressionResistancePriority(_:for:)")
  func setContentCompressionResistancePriority(_ priority: UILayoutPriority, forAxis axis: NSLayoutConstraint.Axis)
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.noIntrinsicMetric")
let UIViewNoIntrinsicMetric: CGFloat
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.layoutFittingCompressedSize")
let UILayoutFittingCompressedSize: CGSize
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIView.layoutFittingExpandedSize")
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  @available(iOS 6.0, *)
  func systemLayoutSizeFitting(_ targetSize: CGSize) -> CGSize
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "systemLayoutSizeFitting(_:)")
  func systemLayoutSizeFittingSize(_ targetSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)")
  func systemLayoutSizeFittingSize(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  @available(iOS 9.0, *)
  var layoutGuides: [UILayoutGuide] { get }
  @available(iOS 9.0, *)
  func addLayoutGuide(_ layoutGuide: UILayoutGuide)
  @available(iOS 9.0, *)
  func removeLayoutGuide(_ layoutGuide: UILayoutGuide)
}
extension UIView {
  @available(iOS 9.0, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(iOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(iOS 9.0, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
}
extension UIView {
  @available(iOS 6.0, *)
  func constraintsAffectingLayout(for axis: NSLayoutConstraint.Axis) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "constraintsAffectingLayout(for:)")
  func constraintsAffectingLayoutForAxis(_ axis: NSLayoutConstraint.Axis) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  var hasAmbiguousLayout: Bool { get }
  @available(iOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UILayoutGuide {
  @available(iOS 10.0, *)
  func constraintsAffectingLayout(for axis: NSLayoutConstraint.Axis) -> [NSLayoutConstraint]
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "constraintsAffectingLayout(for:)")
  func constraintsAffectingLayoutForAxis(_ axis: NSLayoutConstraint.Axis) -> [NSLayoutConstraint]
  @available(iOS 10.0, *)
  var hasAmbiguousLayout: Bool { get }
}
extension UIView {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  func encodeRestorableState(with coder: NSCoder)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "encodeRestorableState(with:)")
  func encodeRestorableStateWithCoder(_ coder: NSCoder)
  @available(iOS 6.0, *)
  func decodeRestorableState(with coder: NSCoder)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "decodeRestorableState(with:)")
  func decodeRestorableStateWithCoder(_ coder: NSCoder)
}
extension UIView {
  @available(iOS 7.0, *)
  func snapshotView(afterScreenUpdates afterUpdates: Bool) -> UIView?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "snapshotView(afterScreenUpdates:)")
  func snapshotViewAfterScreenUpdates(_ afterUpdates: Bool) -> UIView?
  @available(iOS 7.0, *)
  func resizableSnapshotView(from rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "resizableSnapshotView(from:afterScreenUpdates:withCapInsets:)")
  func resizableSnapshotViewFromRect(_ rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView?
  @available(iOS 7.0, *)
  func drawHierarchy(in rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "drawHierarchy(in:afterScreenUpdates:)")
  func drawViewHierarchyInRect(_ rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
extension UIView {
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func beginAnimations(_ animationID: String?, context: UnsafeMutableRawPointer?)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func commitAnimations()
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationDelegate(_ delegate: Any?)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationWillStart(_ selector: Selector?)
  @available(swift, obsoleted: 3, renamed: "setAnimationWillStart(_:)")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationWillStartSelector(_ selector: Selector?)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationDidStop(_ selector: Selector?)
  @available(swift, obsoleted: 3, renamed: "setAnimationDidStop(_:)")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationDidStopSelector(_ selector: Selector?)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationDuration(_ duration: TimeInterval)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationDelay(_ delay: TimeInterval)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationStart(_ startDate: Date)
  @available(swift, obsoleted: 3, renamed: "setAnimationStart(_:)")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationStartDate(_ startDate: Date)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationCurve(_ curve: UIView.AnimationCurve)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationRepeatCount(_ repeatCount: Float)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationRepeatAutoreverses(_ repeatAutoreverses: Bool)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationBeginsFromCurrentState(_ fromCurrentState: Bool)
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationTransition(_ transition: UIView.AnimationTransition, for view: UIView, cache: Bool)
  @available(swift, obsoleted: 3, renamed: "setAnimationTransition(_:for:cache:)")
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use the block-based animation API instead")
  class func setAnimationTransition(_ transition: UIView.AnimationTransition, forView view: UIView, cache: Bool)
}
extension UIView {
  @available(iOS 13.0, *)
  var overrideUserInterfaceStyle: UIUserInterfaceStyle
}
