@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIActivity.ActivityType")
typealias UIActivityType = UIActivity.ActivityType
extension UIActivity {
  struct ActivityType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  @available(iOS 7.0, *)
  enum Category : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case action
    @available(swift, obsoleted: 3, renamed: "action")
    static var Action: UIActivity.Category { get }
    case share
    @available(swift, obsoleted: 3, renamed: "share")
    static var Share: UIActivity.Category { get }
  }
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.postToFacebook")
let UIActivityTypePostToFacebook: UIActivity.ActivityType
extension UIActivity.ActivityType {
  @available(iOS 6.0, *)
  static let postToFacebook: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let postToTwitter: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let postToWeibo: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let message: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let mail: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let print: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let copyToPasteboard: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let assignToContact: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let saveToCameraRoll: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let addToReadingList: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let postToFlickr: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let postToVimeo: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let postToTencentWeibo: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let airDrop: UIActivity.ActivityType
  @available(iOS 9.0, *)
  static let openInIBooks: UIActivity.ActivityType
  @available(iOS 11.0, *)
  static let markupAsPDF: UIActivity.ActivityType
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.postToTwitter")
let UIActivityTypePostToTwitter: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.postToWeibo")
let UIActivityTypePostToWeibo: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.message")
let UIActivityTypeMessage: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.mail")
let UIActivityTypeMail: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.print")
let UIActivityTypePrint: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.copyToPasteboard")
let UIActivityTypeCopyToPasteboard: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.assignToContact")
let UIActivityTypeAssignToContact: UIActivity.ActivityType
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.saveToCameraRoll")
let UIActivityTypeSaveToCameraRoll: UIActivity.ActivityType
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.addToReadingList")
let UIActivityTypeAddToReadingList: UIActivity.ActivityType
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.postToFlickr")
let UIActivityTypePostToFlickr: UIActivity.ActivityType
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.postToVimeo")
let UIActivityTypePostToVimeo: UIActivity.ActivityType
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.postToTencentWeibo")
let UIActivityTypePostToTencentWeibo: UIActivity.ActivityType
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.airDrop")
let UIActivityTypeAirDrop: UIActivity.ActivityType
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.openInIBooks")
let UIActivityTypeOpenInIBooks: UIActivity.ActivityType
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivity.ActivityType.markupAsPDF")
let UIActivityTypeMarkupAsPDF: UIActivity.ActivityType
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIActivity.Category")
typealias UIActivityCategory = UIActivity.Category
@available(iOS 6.0, *)
class UIActivity : NSObject {
  @available(iOS 7.0, *)
  class var activityCategory: UIActivity.Category { get }
  var activityType: UIActivity.ActivityType? { get }
  var activityTitle: String? { get }
  var activityImage: UIImage? { get }
  func canPerform(withActivityItems activityItems: [Any]) -> Bool
  @available(swift, obsoleted: 3, renamed: "canPerform(withActivityItems:)")
  func canPerformWithActivityItems(_ activityItems: [Any]) -> Bool
  func prepare(withActivityItems activityItems: [Any])
  @available(swift, obsoleted: 3, renamed: "prepare(withActivityItems:)")
  func prepareWithActivityItems(_ activityItems: [Any])
  var activityViewController: UIViewController? { get }
  func perform()
  @available(swift, obsoleted: 3, renamed: "perform()")
  func performActivity()
  func activityDidFinish(_ completed: Bool)
  init()
}
