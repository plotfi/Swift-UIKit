@_exported import Foundation

@available(iOS 12.2, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.guidedAccessErrorDomain")
let UIGuidedAccessErrorDomain: String
extension UIAccessibility {
  @available(iOS 12.2, *)
  static let guidedAccessErrorDomain: String
  @available(iOS 12.2, *)
  struct GuidedAccessError : _BridgedStoredNSError {
    let _nsError: NSError
    init(_nsError: NSError)
    static var errorDomain: String { get }
    @available(iOS 12.2, *)
    enum Code : Int, _ErrorCodeProtocol {
      init?(rawValue: Int)
      var rawValue: Int { get }
      typealias RawValue = Int
      typealias _ErrorType = UIAccessibility.GuidedAccessError
      case permissionDenied
      @available(swift, obsoleted: 3, renamed: "permissionDenied")
      static var PermissionDenied: UIAccessibility.GuidedAccessError.Code { get }
      case failed
      @available(swift, obsoleted: 3, renamed: "failed")
      static var Failed: UIAccessibility.GuidedAccessError.Code { get }
    }
    static var permissionDenied: UIAccessibility.GuidedAccessError.Code { get }
    static var failed: UIAccessibility.GuidedAccessError.Code { get }
  }
  enum GuidedAccessRestrictionState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case allow
    @available(swift, obsoleted: 3, renamed: "allow")
    static var Allow: UIAccessibility.GuidedAccessRestrictionState { get }
    case deny
    @available(swift, obsoleted: 3, renamed: "deny")
    static var Deny: UIAccessibility.GuidedAccessRestrictionState { get }
  }
  @available(iOS 7.0, *)
  static func guidedAccessRestrictionState(forIdentifier restrictionIdentifier: String) -> UIAccessibility.GuidedAccessRestrictionState
  @available(iOS 12.2, *)
  static func configureForGuidedAccess(features: UIGuidedAccessAccessibilityFeature, enabled: Bool, completionHandler completion: @escaping (Bool, Error?) -> Void)
}
@available(iOS 12.2, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.GuidedAccessError")
typealias UIGuidedAccessError = UIAccessibility.GuidedAccessError.Code
@available(swift, obsoleted: 4.2, renamed: "UIAccessibility.GuidedAccessRestrictionState")
typealias UIGuidedAccessRestrictionState = UIAccessibility.GuidedAccessRestrictionState
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  var guidedAccessRestrictionIdentifiers: [String]? { get }
  func guidedAccessRestriction(withIdentifier restrictionIdentifier: String, didChange newRestrictionState: UIAccessibility.GuidedAccessRestrictionState)
  @available(swift, obsoleted: 3, renamed: "guidedAccessRestriction(withIdentifier:didChange:)")
  func guidedAccessRestrictionWithIdentifier(_ restrictionIdentifier: String, didChangeState newRestrictionState: UIAccessibility.GuidedAccessRestrictionState)
  func textForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
  @available(swift, obsoleted: 3, renamed: "textForGuidedAccessRestriction(withIdentifier:)")
  func textForGuidedAccessRestrictionWithIdentifier(_ restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
  @available(swift, obsoleted: 3, renamed: "detailTextForGuidedAccessRestriction(withIdentifier:)")
  optional func detailTextForGuidedAccessRestrictionWithIdentifier(_ restrictionIdentifier: String) -> String?
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.guidedAccessRestrictionState(forIdentifier:)")
func UIGuidedAccessRestrictionStateForIdentifier(_ restrictionIdentifier: String) -> UIAccessibility.GuidedAccessRestrictionState
@available(iOS 12.2, *)
struct UIGuidedAccessAccessibilityFeature : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIGuidedAccessAccessibilityFeature
  typealias ArrayLiteralElement = UIGuidedAccessAccessibilityFeature
  static var voiceOver: UIGuidedAccessAccessibilityFeature { get }
  @available(swift, obsoleted: 3, renamed: "voiceOver")
  static var VoiceOver: UIGuidedAccessAccessibilityFeature { get }
  static var zoom: UIGuidedAccessAccessibilityFeature { get }
  @available(swift, obsoleted: 3, renamed: "zoom")
  static var Zoom: UIGuidedAccessAccessibilityFeature { get }
  static var assistiveTouch: UIGuidedAccessAccessibilityFeature { get }
  @available(swift, obsoleted: 3, renamed: "assistiveTouch")
  static var AssistiveTouch: UIGuidedAccessAccessibilityFeature { get }
  static var invertColors: UIGuidedAccessAccessibilityFeature { get }
  @available(swift, obsoleted: 3, renamed: "invertColors")
  static var InvertColors: UIGuidedAccessAccessibilityFeature { get }
  static var grayscaleDisplay: UIGuidedAccessAccessibilityFeature { get }
  @available(swift, obsoleted: 3, renamed: "grayscaleDisplay")
  static var GrayscaleDisplay: UIGuidedAccessAccessibilityFeature { get }
}
@available(iOS 12.2, *)
@available(swift, obsoleted: 3, renamed: "UIAccessibility.configureForGuidedAccess(features:enabled:completionHandler:)")
func UIGuidedAccessConfigureAccessibilityFeatures(_ features: UIGuidedAccessAccessibilityFeature, _ enabled: Bool, _ completion: @escaping (Bool, Error?) -> Void)
