@_exported import Foundation

struct UIAccessibilityTraits : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: UInt64)
  let rawValue: UInt64
  typealias RawValue = UInt64
}

extension UIAccessibilityTraits : OptionSet {
  typealias ArrayLiteralElement = UIAccessibilityTraits
  typealias Element = UIAccessibilityTraits
}
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.none")
var UIAccessibilityTraitNone: UIAccessibilityTraits
extension UIAccessibilityTraits {
  static var none: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.none")
  static var UIAccessibilityTraitNone: UIAccessibilityTraits
  static var button: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.button")
  static var UIAccessibilityTraitButton: UIAccessibilityTraits
  static var link: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.link")
  static var UIAccessibilityTraitLink: UIAccessibilityTraits
  @available(iOS 6.0, *)
  static var header: UIAccessibilityTraits
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.header")
  static var UIAccessibilityTraitHeader: UIAccessibilityTraits
  static var searchField: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.searchField")
  static var UIAccessibilityTraitSearchField: UIAccessibilityTraits
  static var image: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.image")
  static var UIAccessibilityTraitImage: UIAccessibilityTraits
  static var selected: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.selected")
  static var UIAccessibilityTraitSelected: UIAccessibilityTraits
  static var playsSound: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.playsSound")
  static var UIAccessibilityTraitPlaysSound: UIAccessibilityTraits
  static var keyboardKey: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.keyboardKey")
  static var UIAccessibilityTraitKeyboardKey: UIAccessibilityTraits
  static var staticText: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.staticText")
  static var UIAccessibilityTraitStaticText: UIAccessibilityTraits
  static var summaryElement: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.summaryElement")
  static var UIAccessibilityTraitSummaryElement: UIAccessibilityTraits
  static var notEnabled: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.notEnabled")
  static var UIAccessibilityTraitNotEnabled: UIAccessibilityTraits
  static var updatesFrequently: UIAccessibilityTraits
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.updatesFrequently")
  static var UIAccessibilityTraitUpdatesFrequently: UIAccessibilityTraits
  @available(iOS 4.0, *)
  static var startsMediaSession: UIAccessibilityTraits
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.startsMediaSession")
  static var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
  @available(iOS 4.0, *)
  static var adjustable: UIAccessibilityTraits
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.adjustable")
  static var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
  @available(iOS 5.0, *)
  static var allowsDirectInteraction: UIAccessibilityTraits
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.allowsDirectInteraction")
  static var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
  @available(iOS 5.0, *)
  static var causesPageTurn: UIAccessibilityTraits
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.causesPageTurn")
  static var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
  @available(iOS 10.0, *)
  static var tabBar: UIAccessibilityTraits
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibilityTraits.tabBar")
  static var UIAccessibilityTraitTabBar: UIAccessibilityTraits
}
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.button")
var UIAccessibilityTraitButton: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.link")
var UIAccessibilityTraitLink: UIAccessibilityTraits
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.header")
var UIAccessibilityTraitHeader: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.searchField")
var UIAccessibilityTraitSearchField: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.image")
var UIAccessibilityTraitImage: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.selected")
var UIAccessibilityTraitSelected: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.playsSound")
var UIAccessibilityTraitPlaysSound: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.keyboardKey")
var UIAccessibilityTraitKeyboardKey: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.staticText")
var UIAccessibilityTraitStaticText: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.summaryElement")
var UIAccessibilityTraitSummaryElement: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.notEnabled")
var UIAccessibilityTraitNotEnabled: UIAccessibilityTraits
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.updatesFrequently")
var UIAccessibilityTraitUpdatesFrequently: UIAccessibilityTraits
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.startsMediaSession")
var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.adjustable")
var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.allowsDirectInteraction")
var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.causesPageTurn")
var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTraits.tabBar")
var UIAccessibilityTraitTabBar: UIAccessibilityTraits
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification")
typealias UIAccessibilityNotifications = UIAccessibility.Notification
extension UIAccessibility {
  struct Notification : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: UInt32)
    let rawValue: UInt32
    typealias RawValue = UInt32
  }
  @available(iOS 6.0, *)
  static let announcementDidFinishNotification: NSNotification.Name
  @available(iOS 6.0, *)
  static let announcementStringValueUserInfoKey: String
  @available(iOS 6.0, *)
  static let announcementWasSuccessfulUserInfoKey: String
  @available(iOS 9.0, *)
  static let elementFocusedNotification: NSNotification.Name
  @available(iOS 9.0, *)
  static let focusedElementUserInfoKey: String
  @available(iOS 9.0, *)
  static let unfocusedElementUserInfoKey: String
  @available(iOS 9.0, *)
  static let assistiveTechnologyUserInfoKey: String
  struct AssistiveTechnologyIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(swift, obsoleted: 3, renamed: "UIAccessibility.Notification.screenChanged")
var UIAccessibilityScreenChangedNotification: UIAccessibility.Notification
extension UIAccessibility.Notification {
  static var screenChanged: UIAccessibility.Notification
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification.screenChanged")
  static var UIAccessibilityScreenChangedNotification: UIAccessibility.Notification
  static var layoutChanged: UIAccessibility.Notification
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification.layoutChanged")
  static var UIAccessibilityLayoutChangedNotification: UIAccessibility.Notification
  @available(iOS 4.0, *)
  static var announcement: UIAccessibility.Notification
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification.announcement")
  static var UIAccessibilityAnnouncementNotification: UIAccessibility.Notification
  @available(iOS 4.2, *)
  static var pageScrolled: UIAccessibility.Notification
  @available(iOS 4.2, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification.pageScrolled")
  static var UIAccessibilityPageScrolledNotification: UIAccessibility.Notification
  @available(iOS 8.0, *)
  static var pauseAssistiveTechnology: UIAccessibility.Notification
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification.pauseAssistiveTechnology")
  static var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibility.Notification
  @available(iOS 8.0, *)
  static var resumeAssistiveTechnology: UIAccessibility.Notification
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.Notification.resumeAssistiveTechnology")
  static var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibility.Notification
}
@available(swift, obsoleted: 3, renamed: "UIAccessibility.Notification.layoutChanged")
var UIAccessibilityLayoutChangedNotification: UIAccessibility.Notification
@available(iOS 4.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.Notification.announcement")
var UIAccessibilityAnnouncementNotification: UIAccessibility.Notification
@available(iOS 4.2, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.Notification.pageScrolled")
var UIAccessibilityPageScrolledNotification: UIAccessibility.Notification
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.Notification.pauseAssistiveTechnology")
var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibility.Notification
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.Notification.resumeAssistiveTechnology")
var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibility.Notification
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.announcementDidFinishNotification")
let UIAccessibilityAnnouncementDidFinishNotification: NSNotification.Name
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.announcementStringValueUserInfoKey")
let UIAccessibilityAnnouncementKeyStringValue: String
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.announcementWasSuccessfulUserInfoKey")
let UIAccessibilityAnnouncementKeyWasSuccessful: String
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.elementFocusedNotification")
let UIAccessibilityElementFocusedNotification: NSNotification.Name
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.focusedElementUserInfoKey")
let UIAccessibilityFocusedElementKey: String
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.unfocusedElementUserInfoKey")
let UIAccessibilityUnfocusedElementKey: String
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.assistiveTechnologyUserInfoKey")
let UIAccessibilityAssistiveTechnologyKey: String
@available(swift, obsoleted: 3, renamed: "UIAccessibility.AssistiveTechnologyIdentifier")
typealias UIAccessibilityAssistiveTechnologyIdentifier = UIAccessibility.AssistiveTechnologyIdentifier
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.AssistiveTechnologyIdentifier.notificationSwitchControl")
let UIAccessibilityNotificationSwitchControlIdentifier: UIAccessibility.AssistiveTechnologyIdentifier
extension UIAccessibility.AssistiveTechnologyIdentifier {
  @available(iOS 8.0, *)
  static let notificationSwitchControl: UIAccessibility.AssistiveTechnologyIdentifier
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.AssistiveTechnologyIdentifier.notificationSwitchControl")
  static let UIAccessibilityNotificationSwitchControlIdentifier: UIAccessibility.AssistiveTechnologyIdentifier
  @available(iOS 9.0, *)
  static let notificationVoiceOver: UIAccessibility.AssistiveTechnologyIdentifier
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIAccessibility.AssistiveTechnologyIdentifier.notificationVoiceOver")
  static let UIAccessibilityNotificationVoiceOverIdentifier: UIAccessibility.AssistiveTechnologyIdentifier
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.AssistiveTechnologyIdentifier.notificationVoiceOver")
let UIAccessibilityNotificationVoiceOverIdentifier: UIAccessibility.AssistiveTechnologyIdentifier
@available(iOS 8.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case automatic
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: UIAccessibilityNavigationStyle { get }
  case separate
  @available(swift, obsoleted: 3, renamed: "separate")
  static var Separate: UIAccessibilityNavigationStyle { get }
  case combined
  @available(swift, obsoleted: 3, renamed: "combined")
  static var Combined: UIAccessibilityNavigationStyle { get }
}
@available(iOS 11.0, *)
enum UIAccessibilityContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIAccessibilityContainerType { get }
  case dataTable
  @available(swift, obsoleted: 3, renamed: "dataTable")
  static var DataTable: UIAccessibilityContainerType { get }
  case list
  @available(swift, obsoleted: 3, renamed: "list")
  static var List: UIAccessibilityContainerType { get }
  case landmark
  @available(swift, obsoleted: 3, renamed: "landmark")
  static var Landmark: UIAccessibilityContainerType { get }
  @available(iOS 13.0, *)
  case semanticGroup
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "semanticGroup")
  static var SemanticGroup: UIAccessibilityContainerType { get }
}
@available(iOS 13.0, *)
struct UIAccessibilityTextualContext : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.wordProcessing")
let UIAccessibilityTextualContextWordProcessing: UIAccessibilityTextualContext
extension UIAccessibilityTextualContext {
  @available(iOS 13.0, *)
  static let wordProcessing: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let narrative: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let messaging: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let spreadsheet: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let fileSystem: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let sourceCode: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let console: UIAccessibilityTextualContext
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.narrative")
let UIAccessibilityTextualContextNarrative: UIAccessibilityTextualContext
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.messaging")
let UIAccessibilityTextualContextMessaging: UIAccessibilityTextualContext
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.spreadsheet")
let UIAccessibilityTextualContextSpreadsheet: UIAccessibilityTextualContext
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.fileSystem")
let UIAccessibilityTextualContextFileSystem: UIAccessibilityTextualContext
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.sourceCode")
let UIAccessibilityTextualContextSourceCode: UIAccessibilityTextualContext
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibilityTextualContext.console")
let UIAccessibilityTextualContextConsole: UIAccessibilityTextualContext
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilitySpeechPunctuation")
let UIAccessibilitySpeechAttributePunctuation: NSAttributedString.Key
extension NSAttributedString.Key {
  @available(iOS 7.0, *)
  static let accessibilitySpeechPunctuation: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let accessibilitySpeechLanguage: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let accessibilitySpeechPitch: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilitySpeechQueueAnnouncement: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilitySpeechIPANotation: NSAttributedString.Key
  @available(iOS 13.0, *)
  static let accessibilitySpeechSpellOut: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilityTextHeadingLevel: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilityTextCustom: NSAttributedString.Key
  @available(iOS 13.0, *)
  static let UIAccessibilityTextAttributeContext: NSAttributedString.Key
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilitySpeechLanguage")
let UIAccessibilitySpeechAttributeLanguage: NSAttributedString.Key
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilitySpeechPitch")
let UIAccessibilitySpeechAttributePitch: NSAttributedString.Key
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilitySpeechQueueAnnouncement")
let UIAccessibilitySpeechAttributeQueueAnnouncement: NSAttributedString.Key
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilitySpeechIPANotation")
let UIAccessibilitySpeechAttributeIPANotation: NSAttributedString.Key
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilitySpeechSpellOut")
let UIAccessibilitySpeechAttributeSpellOut: NSAttributedString.Key
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilityTextHeadingLevel")
let UIAccessibilityTextAttributeHeadingLevel: NSAttributedString.Key
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.accessibilityTextCustom")
let UIAccessibilityTextAttributeCustom: NSAttributedString.Key
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "NSAttributedString.Key.UIAccessibilityTextAttributeContext")
let UIAccessibilityTextAttributeContext: NSAttributedString.Key
struct UIAccessibility {
  var _reserved: UnsafeMutableRawPointer
  init(_reserved: UnsafeMutableRawPointer)
}
