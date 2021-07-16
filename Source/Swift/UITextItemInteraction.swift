@_exported import Foundation

@available(iOS 10.0, *)
enum UITextItemInteraction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case invokeDefaultAction
  @available(swift, obsoleted: 3, renamed: "invokeDefaultAction")
  static var InvokeDefaultAction: UITextItemInteraction { get }
  case presentActions
  @available(swift, obsoleted: 3, renamed: "presentActions")
  static var PresentActions: UITextItemInteraction { get }
  case preview
  @available(swift, obsoleted: 3, renamed: "preview")
  static var Preview: UITextItemInteraction { get }
}
