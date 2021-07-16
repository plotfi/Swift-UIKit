@_exported import Foundation

extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  @available(iOS 11.0, *)
  @NSCopying var accessibilityAttributedLabel: NSAttributedString?
  var accessibilityHint: String?
  @available(iOS 11.0, *)
  @NSCopying var accessibilityAttributedHint: NSAttributedString?
  var accessibilityValue: String?
  @available(iOS 11.0, *)
  @NSCopying var accessibilityAttributedValue: NSAttributedString?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @available(iOS 7.0, *)
  @NSCopying var accessibilityPath: UIBezierPath?
  @available(iOS 5.0, *)
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  @available(iOS 5.0, *)
  var accessibilityElementsHidden: Bool
  @available(iOS 5.0, *)
  var accessibilityViewIsModal: Bool
  @available(iOS 6.0, *)
  var shouldGroupAccessibilityChildren: Bool
  @available(iOS 8.0, *)
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
  @available(iOS 13.0, *)
  var accessibilityRespondsToUserInteraction: Bool
  @available(iOS 13.0, *)
  var accessibilityUserInputLabels: [String]!
  @available(iOS 13.0, *)
  var accessibilityAttributedUserInputLabels: [NSAttributedString]!
  @available(iOS, unavailable)
  var accessibilityHeaderElements: [Any]?
  @available(iOS 13.0, *)
  var accessibilityTextualContext: UIAccessibilityTextualContext?
  class func isAccessibilityElement() -> Bool
  class func setIsAccessibilityElement(_ isAccessibilityElement: Bool)
  class func accessibilityLabel() -> String?
  class func setAccessibilityLabel(_ accessibilityLabel: String?)
  class func accessibilityAttributedLabel() -> NSAttributedString?
  class func setAccessibilityAttributedLabel(_ accessibilityAttributedLabel: NSAttributedString?)
  class func accessibilityHint() -> String?
  class func setAccessibilityHint(_ accessibilityHint: String?)
  class func accessibilityAttributedHint() -> NSAttributedString?
  class func setAccessibilityAttributedHint(_ accessibilityAttributedHint: NSAttributedString?)
  class func accessibilityValue() -> String?
  class func setAccessibilityValue(_ accessibilityValue: String?)
  class func accessibilityAttributedValue() -> NSAttributedString?
  class func setAccessibilityAttributedValue(_ accessibilityAttributedValue: NSAttributedString?)
  class func accessibilityTraits() -> UIAccessibilityTraits
  class func setAccessibilityTraits(_ accessibilityTraits: UIAccessibilityTraits)
  class func accessibilityFrame() -> CGRect
  class func setAccessibilityFrame(_ accessibilityFrame: CGRect)
  class func accessibilityPath() -> UIBezierPath?
  class func setAccessibilityPath(_ accessibilityPath: UIBezierPath?)
  class func accessibilityActivationPoint() -> CGPoint
  class func setAccessibilityActivationPoint(_ accessibilityActivationPoint: CGPoint)
  class func accessibilityLanguage() -> String?
  class func setAccessibilityLanguage(_ accessibilityLanguage: String?)
  class func accessibilityElementsHidden() -> Bool
  class func setAccessibilityElementsHidden(_ accessibilityElementsHidden: Bool)
  class func accessibilityViewIsModal() -> Bool
  class func setAccessibilityViewIsModal(_ accessibilityViewIsModal: Bool)
  class func shouldGroupAccessibilityChildren() -> Bool
  class func setShouldGroupAccessibilityChildren(_ shouldGroupAccessibilityChildren: Bool)
  class func accessibilityNavigationStyle() -> UIAccessibilityNavigationStyle
  class func setAccessibilityNavigationStyle(_ accessibilityNavigationStyle: UIAccessibilityNavigationStyle)
  class func accessibilityRespondsToUserInteraction() -> Bool
  class func setAccessibilityRespondsToUserInteraction(_ accessibilityRespondsToUserInteraction: Bool)
  class func accessibilityUserInputLabels() -> [String]!
  class func setAccessibilityUserInputLabels(_ accessibilityUserInputLabels: [String]?)
  class func accessibilityAttributedUserInputLabels() -> [NSAttributedString]!
  class func setAccessibilityAttributedUserInputLabels(_ accessibilityAttributedUserInputLabels: [NSAttributedString]?)
  class func accessibilityHeaderElements() -> [Any]?
  class func setAccessibilityHeaderElements(_ accessibilityHeaderElements: [Any]?)
  class func accessibilityTextualContext() -> UIAccessibilityTextualContext?
  class func setAccessibilityTextualContext(_ accessibilityTextualContext: UIAccessibilityTextualContext?)
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.convertToScreenCoordinates(_:in:)")
func UIAccessibilityConvertFrameToScreenCoordinates(_ rect: CGRect, _ view: UIView) -> CGRect
extension UIAccessibility {
  @available(iOS 7.0, *)
  static func convertToScreenCoordinates(_ rect: CGRect, in view: UIView) -> CGRect
  @available(iOS 7.0, *)
  static func convertToScreenCoordinates(_ path: UIBezierPath, in view: UIView) -> UIBezierPath
  @available(iOS 9.0, *)
  static func focusedElement(using assistiveTechnologyIdentifier: UIAccessibility.AssistiveTechnologyIdentifier?) -> Any?
  static func post(notification: UIAccessibility.Notification, argument: Any?)
  @available(iOS 4.0, *)
  static var isVoiceOverRunning: Bool { get }
  @available(iOS 11.0, *)
  static let voiceOverStatusDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  static var isMonoAudioEnabled: Bool { get }
  @available(iOS 5.0, *)
  static let monoAudioStatusDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  static var isClosedCaptioningEnabled: Bool { get }
  @available(iOS 5.0, *)
  static let closedCaptioningStatusDidChangeNotification: NSNotification.Name
  @available(iOS 6.0, *)
  static var isInvertColorsEnabled: Bool { get }
  @available(iOS 6.0, *)
  static let invertColorsStatusDidChangeNotification: NSNotification.Name
  @available(iOS 6.0, *)
  static var isGuidedAccessEnabled: Bool { get }
  @available(iOS 6.0, *)
  static let guidedAccessStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isBoldTextEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let boldTextStatusDidChangeNotification: NSNotification.Name
  @available(iOS 14.0, *)
  static var buttonShapesEnabled: Bool { get }
  @available(iOS 14.0, *)
  static let buttonShapesEnabledStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isGrayscaleEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let grayscaleStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isReduceTransparencyEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let reduceTransparencyStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isReduceMotionEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let reduceMotionStatusDidChangeNotification: NSNotification.Name
  @available(iOS 14.0, *)
  static var prefersCrossFadeTransitions: Bool { get }
  @available(iOS 14.0, *)
  static let prefersCrossFadeTransitionsStatusDidChange: NSNotification.Name
  @available(iOS 13.0, *)
  static var isVideoAutoplayEnabled: Bool { get }
  @available(iOS 13.0, *)
  static let videoAutoplayStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isDarkerSystemColorsEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let darkerSystemColorsStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isSwitchControlRunning: Bool { get }
  @available(iOS 8.0, *)
  static let switchControlStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isSpeakSelectionEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let speakSelectionStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isSpeakScreenEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let speakScreenStatusDidChangeNotification: NSNotification.Name
  @available(iOS 9.0, *)
  static var isShakeToUndoEnabled: Bool { get }
  @available(iOS 9.0, *)
  static let shakeToUndoDidChangeNotification: NSNotification.Name
  @available(iOS 10.0, *)
  static var isAssistiveTouchRunning: Bool { get }
  @available(iOS 10.0, *)
  static let assistiveTouchStatusDidChangeNotification: NSNotification.Name
  @available(iOS 13.0, *)
  static var shouldDifferentiateWithoutColor: Bool { get }
  @available(iOS 13.0, *)
  static let differentiateWithoutColorDidChangeNotification: String
  @available(iOS 13.0, *)
  static var isOnOffSwitchLabelsEnabled: Bool { get }
  @available(iOS 13.0, *)
  static let onOffSwitchLabelsDidChangeNotification: NSNotification.Name
  @available(iOS 7.0, *)
  static func requestGuidedAccessSession(enabled enable: Bool, completionHandler: @escaping (Bool) -> Void)
  @available(iOS 10.0, *)
  struct HearingDeviceEar : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIAccessibility.HearingDeviceEar
    typealias ArrayLiteralElement = UIAccessibility.HearingDeviceEar
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var none: UIAccessibility.HearingDeviceEar { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIAccessibility.HearingDeviceEar { get }
    static var left: UIAccessibility.HearingDeviceEar { get }
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UIAccessibility.HearingDeviceEar { get }
    static var right: UIAccessibility.HearingDeviceEar { get }
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UIAccessibility.HearingDeviceEar { get }
    static var both: UIAccessibility.HearingDeviceEar { get }
    @available(swift, obsoleted: 3, renamed: "both")
    static var Both: UIAccessibility.HearingDeviceEar { get }
  }
  @available(iOS 10.0, *)
  static var hearingDevicePairedEar: UIAccessibility.HearingDeviceEar { get }
  @available(iOS 10.0, *)
  static let hearingDevicePairedEarDidChangeNotification: NSNotification.Name
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.convertToScreenCoordinates(_:in:)")
func UIAccessibilityConvertPathToScreenCoordinates(_ path: UIBezierPath, _ view: UIView) -> UIBezierPath
extension NSObject {
  @available(iOS 4.0, *)
  class func accessibilityElementDidBecomeFocused()
  @available(iOS 4.0, *)
  func accessibilityElementDidBecomeFocused()
  @available(iOS 4.0, *)
  class func accessibilityElementDidLoseFocus()
  @available(iOS 4.0, *)
  func accessibilityElementDidLoseFocus()
  @available(iOS 4.0, *)
  class func accessibilityElementIsFocused() -> Bool
  @available(iOS 4.0, *)
  func accessibilityElementIsFocused() -> Bool
  @available(iOS 9.0, *)
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<UIAccessibility.AssistiveTechnologyIdentifier>?
  @available(iOS 9.0, *)
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<UIAccessibility.AssistiveTechnologyIdentifier>?
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.focusedElement(using:)")
func UIAccessibilityFocusedElement(_ assistiveTechnologyIdentifier: UIAccessibility.AssistiveTechnologyIdentifier?) -> Any?
extension NSObject {
  @available(iOS 7.0, *)
  class func accessibilityActivate() -> Bool
  @available(iOS 7.0, *)
  func accessibilityActivate() -> Bool
  @available(iOS 4.0, *)
  class func accessibilityIncrement()
  @available(iOS 4.0, *)
  func accessibilityIncrement()
  @available(iOS 4.0, *)
  class func accessibilityDecrement()
  @available(iOS 4.0, *)
  func accessibilityDecrement()
  @available(iOS 4.2, *)
  class func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool
  @available(iOS 4.2, *)
  func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool
  @available(iOS 5.0, *)
  class func accessibilityPerformEscape() -> Bool
  @available(iOS 5.0, *)
  func accessibilityPerformEscape() -> Bool
  @available(iOS 6.0, *)
  class func accessibilityPerformMagicTap() -> Bool
  @available(iOS 6.0, *)
  func accessibilityPerformMagicTap() -> Bool
  @available(iOS 8.0, *)
  var accessibilityCustomActions: [UIAccessibilityCustomAction]?
  class func accessibilityCustomActions() -> [UIAccessibilityCustomAction]?
  class func setAccessibilityCustomActions(_ accessibilityCustomActions: [UIAccessibilityCustomAction]?)
}
enum UIAccessibilityScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case right
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: UIAccessibilityScrollDirection { get }
  case left
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: UIAccessibilityScrollDirection { get }
  case up
  @available(swift, obsoleted: 3, renamed: "up")
  static var Up: UIAccessibilityScrollDirection { get }
  case down
  @available(swift, obsoleted: 3, renamed: "down")
  static var Down: UIAccessibilityScrollDirection { get }
  @available(iOS 5.0, *)
  case next
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "next")
  static var Next: UIAccessibilityScrollDirection { get }
  @available(iOS 5.0, *)
  case previous
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "previous")
  static var Previous: UIAccessibilityScrollDirection { get }
}
protocol UIAccessibilityReadingContent {
  @available(iOS 5.0, *)
  func accessibilityLineNumber(for point: CGPoint) -> Int
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "accessibilityLineNumber(for:)")
  func accessibilityLineNumberForPoint(_ point: CGPoint) -> Int
  @available(iOS 5.0, *)
  func accessibilityContent(forLineNumber lineNumber: Int) -> String?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "accessibilityContent(forLineNumber:)")
  func accessibilityContentForLineNumber(_ lineNumber: Int) -> String?
  @available(iOS 5.0, *)
  func accessibilityFrame(forLineNumber lineNumber: Int) -> CGRect
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "accessibilityFrame(forLineNumber:)")
  func accessibilityFrameForLineNumber(_ lineNumber: Int) -> CGRect
  @available(iOS 5.0, *)
  func accessibilityPageContent() -> String?
  @available(iOS 11.0, *)
  optional func accessibilityAttributedContent(forLineNumber lineNumber: Int) -> NSAttributedString?
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "accessibilityAttributedContent(forLineNumber:)")
  optional func accessibilityAttributedContentForLineNumber(_ lineNumber: Int) -> NSAttributedString?
  @available(iOS 11.0, *)
  optional func accessibilityAttributedPageContent() -> NSAttributedString?
}
extension NSObject {
  @available(iOS 11.0, *)
  var accessibilityDragSourceDescriptors: [UIAccessibilityLocationDescriptor]?
  @available(iOS 11.0, *)
  var accessibilityDropPointDescriptors: [UIAccessibilityLocationDescriptor]?
  class func accessibilityDragSourceDescriptors() -> [UIAccessibilityLocationDescriptor]?
  class func setAccessibilityDragSourceDescriptors(_ accessibilityDragSourceDescriptors: [UIAccessibilityLocationDescriptor]?)
  class func accessibilityDropPointDescriptors() -> [UIAccessibilityLocationDescriptor]?
  class func setAccessibilityDropPointDescriptors(_ accessibilityDropPointDescriptors: [UIAccessibilityLocationDescriptor]?)
}
@available(swift, obsoleted: 3, renamed: "UIAccessibility.post(notification:argument:)")
func UIAccessibilityPostNotification(_ notification: UIAccessibility.Notification, _ argument: Any?)
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isVoiceOverRunning()")
func UIAccessibilityIsVoiceOverRunning() -> Bool
@available(iOS, introduced: 4.0, deprecated: 11.0, renamed: "UIAccessibility.voiceOverStatusDidChangeNotification")
let UIAccessibilityVoiceOverStatusChanged: String
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.voiceOverStatusDidChangeNotification")
let UIAccessibilityVoiceOverStatusDidChangeNotification: NSNotification.Name
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isMonoAudioEnabled()")
func UIAccessibilityIsMonoAudioEnabled() -> Bool
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.monoAudioStatusDidChangeNotification")
let UIAccessibilityMonoAudioStatusDidChangeNotification: NSNotification.Name
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isClosedCaptioningEnabled()")
func UIAccessibilityIsClosedCaptioningEnabled() -> Bool
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.closedCaptioningStatusDidChangeNotification")
let UIAccessibilityClosedCaptioningStatusDidChangeNotification: NSNotification.Name
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isInvertColorsEnabled()")
func UIAccessibilityIsInvertColorsEnabled() -> Bool
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.invertColorsStatusDidChangeNotification")
let UIAccessibilityInvertColorsStatusDidChangeNotification: NSNotification.Name
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isGuidedAccessEnabled()")
func UIAccessibilityIsGuidedAccessEnabled() -> Bool
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.guidedAccessStatusDidChangeNotification")
let UIAccessibilityGuidedAccessStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isBoldTextEnabled()")
func UIAccessibilityIsBoldTextEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.boldTextStatusDidChangeNotification")
let UIAccessibilityBoldTextStatusDidChangeNotification: NSNotification.Name
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.buttonShapesEnabled()")
func UIAccessibilityButtonShapesEnabled() -> Bool
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.buttonShapesEnabledStatusDidChangeNotification")
let UIAccessibilityButtonShapesEnabledStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isGrayscaleEnabled()")
func UIAccessibilityIsGrayscaleEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.grayscaleStatusDidChangeNotification")
let UIAccessibilityGrayscaleStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isReduceTransparencyEnabled()")
func UIAccessibilityIsReduceTransparencyEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.reduceTransparencyStatusDidChangeNotification")
let UIAccessibilityReduceTransparencyStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isReduceMotionEnabled()")
func UIAccessibilityIsReduceMotionEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.reduceMotionStatusDidChangeNotification")
let UIAccessibilityReduceMotionStatusDidChangeNotification: NSNotification.Name
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.prefersCrossFadeTransitions()")
func UIAccessibilityPrefersCrossFadeTransitions() -> Bool
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.prefersCrossFadeTransitionsStatusDidChange")
let UIAccessibilityPrefersCrossFadeTransitionsStatusDidChangeNotification: NSNotification.Name
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isVideoAutoplayEnabled()")
func UIAccessibilityIsVideoAutoplayEnabled() -> Bool
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.videoAutoplayStatusDidChangeNotification")
let UIAccessibilityVideoAutoplayStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isDarkerSystemColorsEnabled()")
func UIAccessibilityDarkerSystemColorsEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.darkerSystemColorsStatusDidChangeNotification")
let UIAccessibilityDarkerSystemColorsStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isSwitchControlRunning()")
func UIAccessibilityIsSwitchControlRunning() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.switchControlStatusDidChangeNotification")
let UIAccessibilitySwitchControlStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isSpeakSelectionEnabled()")
func UIAccessibilityIsSpeakSelectionEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.speakSelectionStatusDidChangeNotification")
let UIAccessibilitySpeakSelectionStatusDidChangeNotification: NSNotification.Name
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isSpeakScreenEnabled()")
func UIAccessibilityIsSpeakScreenEnabled() -> Bool
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.speakScreenStatusDidChangeNotification")
let UIAccessibilitySpeakScreenStatusDidChangeNotification: NSNotification.Name
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isShakeToUndoEnabled()")
func UIAccessibilityIsShakeToUndoEnabled() -> Bool
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.shakeToUndoDidChangeNotification")
let UIAccessibilityShakeToUndoDidChangeNotification: NSNotification.Name
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isAssistiveTouchRunning()")
func UIAccessibilityIsAssistiveTouchRunning() -> Bool
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.assistiveTouchStatusDidChangeNotification")
let UIAccessibilityAssistiveTouchStatusDidChangeNotification: NSNotification.Name
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.shouldDifferentiateWithoutColor()")
func UIAccessibilityShouldDifferentiateWithoutColor() -> Bool
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.differentiateWithoutColorDidChangeNotification")
let UIAccessibilityShouldDifferentiateWithoutColorDidChangeNotification: String
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.isOnOffSwitchLabelsEnabled()")
func UIAccessibilityIsOnOffSwitchLabelsEnabled() -> Bool
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.onOffSwitchLabelsDidChangeNotification")
let UIAccessibilityOnOffSwitchLabelsDidChangeNotification: NSNotification.Name
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.requestGuidedAccessSession(enabled:completionHandler:)")
func UIAccessibilityRequestGuidedAccessSession(_ enable: Bool, _ completionHandler: @escaping (Bool) -> Void)
@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.HearingDeviceEar")
typealias UIAccessibilityHearingDeviceEar = UIAccessibility.HearingDeviceEar
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIAccessibility.hearingDevicePairedEar()")
func UIAccessibilityHearingDevicePairedEar() -> UIAccessibility.HearingDeviceEar
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.hearingDevicePairedEarDidChangeNotification")
let UIAccessibilityHearingDevicePairedEarDidChangeNotification: NSNotification.Name
