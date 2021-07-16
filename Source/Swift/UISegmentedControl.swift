@_exported import Foundation

@available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "The segmentedControlStyle property no longer has any effect")
enum UISegmentedControlStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case plain
  @available(swift, obsoleted: 3, renamed: "plain")
  static var Plain: UISegmentedControlStyle { get }
  case bordered
  @available(swift, obsoleted: 3, renamed: "bordered")
  static var Bordered: UISegmentedControlStyle { get }
  case bar
  @available(swift, obsoleted: 3, renamed: "bar")
  static var Bar: UISegmentedControlStyle { get }
  case bezeled
  @available(swift, obsoleted: 3, renamed: "bezeled")
  static var Bezeled: UISegmentedControlStyle { get }
}
@available(swift, obsoleted: 4.2, renamed: "UISegmentedControl.noSegment")
var UISegmentedControlNoSegment: Int { get }
extension UISegmentedControl {
  class var noSegment: Int { get }
  enum Segment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case any
    @available(swift, obsoleted: 3, renamed: "any")
    static var `Any`: UISegmentedControl.Segment { get }
    case left
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UISegmentedControl.Segment { get }
    case center
    @available(swift, obsoleted: 3, renamed: "center")
    static var Center: UISegmentedControl.Segment { get }
    case right
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UISegmentedControl.Segment { get }
    case alone
    @available(swift, obsoleted: 3, renamed: "alone")
    static var Alone: UISegmentedControl.Segment { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UISegmentedControl.Segment")
typealias UISegmentedControlSegment = UISegmentedControl.Segment
@available(iOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the segmented control with the given items. Items may be NSStrings, UIImages, or (as of iOS 14.0) UIActions. When constructing from a UIAction segments will prefer images over titles when both are provided. The segmented control is automatically sized to fit content.
  init(items: [Any]?)

  /// Initializes the segmented control with the given frame and segments constructed from the given UIActions. Segments will prefer images over titles when both are provided. Selecting a segment calls UIAction.actionHandler as well as handlers for the ValueChanged and PrimaryActionTriggered control events.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, actions: [UIAction])

  /// Insert a segment with the given action at the given index. Segments will prefer images over titles when both are provided. When the segment is selected UIAction.actionHandler is called. If a segment already exists with the action's identifier that segment will either be updated (if the index is the same) or it will be removed (if different).
  @available(iOS 14.0, *)
  func insertSegment(action: UIAction, at segment: Int, animated: Bool)

  /// Insert a segment with the given action at the given index. Segments will prefer images over titles when both are provided. When the segment is selected UIAction.actionHandler is called. If a segment already exists with the action's identifier that segment will either be updated (if the index is the same) or it will be removed (if different).
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "insertSegment(action:at:animated:)")
  func insertSegmentWithAction(_ action: UIAction, atIndex segment: Int, animated: Bool)

  /// Reconfigures the given segment with this action. Segments will prefer images over titles when both are provided. When the segment is selected UIAction.actionHandler is called. UIAction.identifier must either match the action of the existing segment at this index, or be unique within all actions associated with the segmented control, or this method will assert.
  @available(iOS 14.0, *)
  func setAction(_ action: UIAction, forSegmentAt segment: Int)

  /// Reconfigures the given segment with this action. Segments will prefer images over titles when both are provided. When the segment is selected UIAction.actionHandler is called. UIAction.identifier must either match the action of the existing segment at this index, or be unique within all actions associated with the segmented control, or this method will assert.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "setAction(_:forSegmentAt:)")
  func setAction(_ action: UIAction, forSegmentAtIndex segment: Int)

  /// Fetch the action for the given segment, if one has been assigned to that segment
  @available(iOS 14.0, *)
  func actionForSegment(at segment: Int) -> UIAction?

  /// Fetch the action for the given segment, if one has been assigned to that segment
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "actionForSegment(at:)")
  func actionForSegmentAtIndex(_ segment: Int) -> UIAction?

  /// Returns the index of the segment associated with the given actionIdentifier, or NSNotFound if the identifier could not be found.
  @available(iOS 14.0, *)
  func segmentIndex(identifiedBy actionIdentifier: UIAction.Identifier) -> Int

  /// Returns the index of the segment associated with the given actionIdentifier, or NSNotFound if the identifier could not be found.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "segmentIndex(identifiedBy:)")
  func segmentIndexForActionIdentifier(_ actionIdentifier: UIAction.Identifier) -> Int
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "The segmentedControlStyle property no longer has any effect")
  var segmentedControlStyle: UISegmentedControlStyle
  var isMomentary: Bool
  @available(swift, obsoleted: 3, renamed: "isMomentary")
  var momentary: Bool
  var numberOfSegments: Int { get }
  @available(iOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegment(withTitle title: String?, at segment: Int, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "insertSegment(withTitle:at:animated:)")
  func insertSegmentWithTitle(_ title: String?, atIndex segment: Int, animated: Bool)
  func insertSegment(with image: UIImage?, at segment: Int, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "insertSegment(with:at:animated:)")
  func insertSegmentWithImage(_ image: UIImage?, atIndex segment: Int, animated: Bool)
  func removeSegment(at segment: Int, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "removeSegment(at:animated:)")
  func removeSegmentAtIndex(_ segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(_ title: String?, forSegmentAt segment: Int)
  @available(swift, obsoleted: 3, renamed: "setTitle(_:forSegmentAt:)")
  func setTitle(_ title: String?, forSegmentAtIndex segment: Int)
  func titleForSegment(at segment: Int) -> String?
  @available(swift, obsoleted: 3, renamed: "titleForSegment(at:)")
  func titleForSegmentAtIndex(_ segment: Int) -> String?
  func setImage(_ image: UIImage?, forSegmentAt segment: Int)
  @available(swift, obsoleted: 3, renamed: "setImage(_:forSegmentAt:)")
  func setImage(_ image: UIImage?, forSegmentAtIndex segment: Int)
  func imageForSegment(at segment: Int) -> UIImage?
  @available(swift, obsoleted: 3, renamed: "imageForSegment(at:)")
  func imageForSegmentAtIndex(_ segment: Int) -> UIImage?
  func setWidth(_ width: CGFloat, forSegmentAt segment: Int)
  @available(swift, obsoleted: 3, renamed: "setWidth(_:forSegmentAt:)")
  func setWidth(_ width: CGFloat, forSegmentAtIndex segment: Int)
  func widthForSegment(at segment: Int) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "widthForSegment(at:)")
  func widthForSegmentAtIndex(_ segment: Int) -> CGFloat
  func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int)
  @available(swift, obsoleted: 3, renamed: "setContentOffset(_:forSegmentAt:)")
  func setContentOffset(_ offset: CGSize, forSegmentAtIndex segment: Int)
  func contentOffsetForSegment(at segment: Int) -> CGSize
  @available(swift, obsoleted: 3, renamed: "contentOffsetForSegment(at:)")
  func contentOffsetForSegmentAtIndex(_ segment: Int) -> CGSize
  func setEnabled(_ enabled: Bool, forSegmentAt segment: Int)
  @available(swift, obsoleted: 3, renamed: "setEnabled(_:forSegmentAt:)")
  func setEnabled(_ enabled: Bool, forSegmentAtIndex segment: Int)
  func isEnabledForSegment(at segment: Int) -> Bool
  @available(swift, obsoleted: 3, renamed: "isEnabledForSegment(at:)")
  func isEnabledForSegmentAtIndex(_ segment: Int) -> Bool
  var selectedSegmentIndex: Int
  @available(iOS 13.0, *)
  var selectedSegmentTintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:barMetrics:)")
  func setBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:barMetrics:)")
  func backgroundImageForState(_ state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func dividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "dividerImage(forLeftSegmentState:rightSegmentState:barMetrics:)")
  func dividerImageForLeftSegmentState(_ leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
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
  @available(iOS 5.0, *)
  func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func contentPositionAdjustment(forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "contentPositionAdjustment(forSegmentType:barMetrics:)")
  func contentPositionAdjustmentForSegmentType(_ leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> UIOffset

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
extension UISegmentedControl : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
