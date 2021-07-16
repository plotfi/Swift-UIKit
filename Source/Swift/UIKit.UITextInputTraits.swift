@_exported import Foundation

enum UITextAutocapitalizationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UITextAutocapitalizationType { get }
  case words
  @available(swift, obsoleted: 3, renamed: "words")
  static var Words: UITextAutocapitalizationType { get }
  case sentences
  @available(swift, obsoleted: 3, renamed: "sentences")
  static var Sentences: UITextAutocapitalizationType { get }
  case allCharacters
  @available(swift, obsoleted: 3, renamed: "allCharacters")
  static var AllCharacters: UITextAutocapitalizationType { get }
}
enum UITextAutocorrectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UITextAutocorrectionType { get }
  case no
  @available(swift, obsoleted: 3, renamed: "no")
  static var No: UITextAutocorrectionType { get }
  case yes
  @available(swift, obsoleted: 3, renamed: "yes")
  static var Yes: UITextAutocorrectionType { get }
}
@available(iOS 5.0, *)
enum UITextSpellCheckingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UITextSpellCheckingType { get }
  case no
  @available(swift, obsoleted: 3, renamed: "no")
  static var No: UITextSpellCheckingType { get }
  case yes
  @available(swift, obsoleted: 3, renamed: "yes")
  static var Yes: UITextSpellCheckingType { get }
}
@available(iOS 11.0, *)
enum UITextSmartQuotesType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UITextSmartQuotesType { get }
  case no
  @available(swift, obsoleted: 3, renamed: "no")
  static var No: UITextSmartQuotesType { get }
  case yes
  @available(swift, obsoleted: 3, renamed: "yes")
  static var Yes: UITextSmartQuotesType { get }
}
@available(iOS 11.0, *)
enum UITextSmartDashesType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UITextSmartDashesType { get }
  case no
  @available(swift, obsoleted: 3, renamed: "no")
  static var No: UITextSmartDashesType { get }
  case yes
  @available(swift, obsoleted: 3, renamed: "yes")
  static var Yes: UITextSmartDashesType { get }
}
@available(iOS 11.0, *)
enum UITextSmartInsertDeleteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UITextSmartInsertDeleteType { get }
  case no
  @available(swift, obsoleted: 3, renamed: "no")
  static var No: UITextSmartInsertDeleteType { get }
  case yes
  @available(swift, obsoleted: 3, renamed: "yes")
  static var Yes: UITextSmartInsertDeleteType { get }
}
enum UIKeyboardType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIKeyboardType { get }
  case asciiCapable
  @available(swift, obsoleted: 3, renamed: "asciiCapable")
  static var ASCIICapable: UIKeyboardType { get }
  case numbersAndPunctuation
  @available(swift, obsoleted: 3, renamed: "numbersAndPunctuation")
  static var NumbersAndPunctuation: UIKeyboardType { get }
  case URL
  case numberPad
  @available(swift, obsoleted: 3, renamed: "numberPad")
  static var NumberPad: UIKeyboardType { get }
  case phonePad
  @available(swift, obsoleted: 3, renamed: "phonePad")
  static var PhonePad: UIKeyboardType { get }
  case namePhonePad
  @available(swift, obsoleted: 3, renamed: "namePhonePad")
  static var NamePhonePad: UIKeyboardType { get }
  case emailAddress
  @available(swift, obsoleted: 3, renamed: "emailAddress")
  static var EmailAddress: UIKeyboardType { get }
  @available(iOS 4.1, *)
  case decimalPad
  @available(iOS 4.1, *)
  @available(swift, obsoleted: 3, renamed: "decimalPad")
  static var DecimalPad: UIKeyboardType { get }
  @available(iOS 5.0, *)
  case twitter
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "twitter")
  static var Twitter: UIKeyboardType { get }
  @available(iOS 7.0, *)
  case webSearch
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "webSearch")
  static var WebSearch: UIKeyboardType { get }
  @available(iOS 10.0, *)
  case asciiCapableNumberPad
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "asciiCapableNumberPad")
  static var ASCIICapableNumberPad: UIKeyboardType { get }
  static var alphabet: UIKeyboardType { get }
}
enum UIKeyboardAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIKeyboardAppearance { get }
  @available(iOS 7.0, *)
  case dark
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "dark")
  static var Dark: UIKeyboardAppearance { get }
  @available(iOS 7.0, *)
  case light
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "light")
  static var Light: UIKeyboardAppearance { get }
  static var alert: UIKeyboardAppearance { get }
}
enum UIReturnKeyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIReturnKeyType { get }
  case go
  @available(swift, obsoleted: 3, renamed: "go")
  static var Go: UIReturnKeyType { get }
  case google
  @available(swift, obsoleted: 3, renamed: "google")
  static var Google: UIReturnKeyType { get }
  case join
  @available(swift, obsoleted: 3, renamed: "join")
  static var Join: UIReturnKeyType { get }
  case next
  @available(swift, obsoleted: 3, renamed: "next")
  static var Next: UIReturnKeyType { get }
  case route
  @available(swift, obsoleted: 3, renamed: "route")
  static var Route: UIReturnKeyType { get }
  case search
  @available(swift, obsoleted: 3, renamed: "search")
  static var Search: UIReturnKeyType { get }
  case send
  @available(swift, obsoleted: 3, renamed: "send")
  static var Send: UIReturnKeyType { get }
  case yahoo
  @available(swift, obsoleted: 3, renamed: "yahoo")
  static var Yahoo: UIReturnKeyType { get }
  case done
  @available(swift, obsoleted: 3, renamed: "done")
  static var Done: UIReturnKeyType { get }
  case emergencyCall
  @available(swift, obsoleted: 3, renamed: "emergencyCall")
  static var EmergencyCall: UIReturnKeyType { get }
  @available(iOS 9.0, *)
  case `continue`
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "continue")
  static var Continue: UIReturnKeyType { get }
}
struct UITextContentType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
@available(iOS 12.0, *)
class UITextInputPasswordRules : NSObject, NSSecureCoding, NSCopying {
  var passwordRulesDescriptor: String { get }
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  convenience init(descriptor passwordRulesDescriptor: String)
  @available(*, unavailable, renamed: "init(descriptor:)", message: "Not available in Swift")
  class func passwordRulesWithDescriptor(_ passwordRulesDescriptor: String) -> Self
  @available(iOS 12.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 12.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
  @available(iOS 12.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
protocol UITextInputTraits : NSObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  @available(iOS 5.0, *)
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  @available(iOS 11.0, *)
  optional var smartQuotesType: UITextSmartQuotesType { get set }
  @available(iOS 11.0, *)
  optional var smartDashesType: UITextSmartDashesType { get set }
  @available(iOS 11.0, *)
  optional var smartInsertDeleteType: UITextSmartInsertDeleteType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var isSecureTextEntry: Bool { get set }
  @available(swift, obsoleted: 3, renamed: "isSecureTextEntry")
  optional var secureTextEntry: Bool { get set }
  @available(iOS 10.0, *)
  optional var textContentType: UITextContentType! { get set }
  @available(iOS 12.0, *)
  @NSCopying optional var passwordRules: UITextInputPasswordRules? { get set }
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.name")
let UITextContentTypeName: UITextContentType
extension UITextContentType {
  @available(iOS 10.0, *)
  static let name: UITextContentType
  @available(iOS 10.0, *)
  static let namePrefix: UITextContentType
  @available(iOS 10.0, *)
  static let givenName: UITextContentType
  @available(iOS 10.0, *)
  static let middleName: UITextContentType
  @available(iOS 10.0, *)
  static let familyName: UITextContentType
  @available(iOS 10.0, *)
  static let nameSuffix: UITextContentType
  @available(iOS 10.0, *)
  static let nickname: UITextContentType
  @available(iOS 10.0, *)
  static let jobTitle: UITextContentType
  @available(iOS 10.0, *)
  static let organizationName: UITextContentType
  @available(iOS 10.0, *)
  static let location: UITextContentType
  @available(iOS 10.0, *)
  static let fullStreetAddress: UITextContentType
  @available(iOS 10.0, *)
  static let streetAddressLine1: UITextContentType
  @available(iOS 10.0, *)
  static let streetAddressLine2: UITextContentType
  @available(iOS 10.0, *)
  static let addressCity: UITextContentType
  @available(iOS 10.0, *)
  static let addressState: UITextContentType
  @available(iOS 10.0, *)
  static let addressCityAndState: UITextContentType
  @available(iOS 10.0, *)
  static let sublocality: UITextContentType
  @available(iOS 10.0, *)
  static let countryName: UITextContentType
  @available(iOS 10.0, *)
  static let postalCode: UITextContentType
  @available(iOS 10.0, *)
  static let telephoneNumber: UITextContentType
  @available(iOS 10.0, *)
  static let emailAddress: UITextContentType
  @available(iOS 10.0, *)
  static let URL: UITextContentType
  @available(iOS 10.0, *)
  static let creditCardNumber: UITextContentType
  @available(iOS 11.0, *)
  static let username: UITextContentType
  @available(iOS 11.0, *)
  static let password: UITextContentType
  @available(iOS 12.0, *)
  static let newPassword: UITextContentType
  @available(iOS 12.0, *)
  static let oneTimeCode: UITextContentType
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.namePrefix")
let UITextContentTypeNamePrefix: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.givenName")
let UITextContentTypeGivenName: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.middleName")
let UITextContentTypeMiddleName: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.familyName")
let UITextContentTypeFamilyName: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.nameSuffix")
let UITextContentTypeNameSuffix: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.nickname")
let UITextContentTypeNickname: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.jobTitle")
let UITextContentTypeJobTitle: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.organizationName")
let UITextContentTypeOrganizationName: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.location")
let UITextContentTypeLocation: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.fullStreetAddress")
let UITextContentTypeFullStreetAddress: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.streetAddressLine1")
let UITextContentTypeStreetAddressLine1: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.streetAddressLine2")
let UITextContentTypeStreetAddressLine2: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.addressCity")
let UITextContentTypeAddressCity: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.addressState")
let UITextContentTypeAddressState: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.addressCityAndState")
let UITextContentTypeAddressCityAndState: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.sublocality")
let UITextContentTypeSublocality: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.countryName")
let UITextContentTypeCountryName: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.postalCode")
let UITextContentTypePostalCode: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.telephoneNumber")
let UITextContentTypeTelephoneNumber: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.emailAddress")
let UITextContentTypeEmailAddress: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.URL")
let UITextContentTypeURL: UITextContentType
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.creditCardNumber")
let UITextContentTypeCreditCardNumber: UITextContentType
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.username")
let UITextContentTypeUsername: UITextContentType
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.password")
let UITextContentTypePassword: UITextContentType
@available(iOS 12.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.newPassword")
let UITextContentTypeNewPassword: UITextContentType
@available(iOS 12.0, *)
@available(swift, obsoleted: 3, renamed: "UITextContentType.oneTimeCode")
let UITextContentTypeOneTimeCode: UITextContentType
