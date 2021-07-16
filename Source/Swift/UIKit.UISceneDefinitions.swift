@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.ActivationState")
typealias UISceneActivationState = UIScene.ActivationState
extension UIScene {
  @available(iOS 13.0, *)
  enum ActivationState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unattached
    @available(swift, obsoleted: 3, renamed: "unattached")
    static var Unattached: UIScene.ActivationState { get }
    case foregroundActive
    @available(swift, obsoleted: 3, renamed: "foregroundActive")
    static var ForegroundActive: UIScene.ActivationState { get }
    case foregroundInactive
    @available(swift, obsoleted: 3, renamed: "foregroundInactive")
    static var ForegroundInactive: UIScene.ActivationState { get }
    case background
    @available(swift, obsoleted: 3, renamed: "background")
    static var Background: UIScene.ActivationState { get }
  }
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UISceneSession.Role")
typealias UISceneSessionRole = UISceneSession.Role
extension UISceneSession {
  @available(iOS 13.0, *)
  struct Role : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(iOS 13.0, *)
let UISceneErrorDomain: String
@available(iOS 13.0, *)
struct UISceneError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(iOS 13.0, *)
  enum Code : Int, _ErrorCodeProtocol {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    typealias _ErrorType = UISceneError
    case multipleScenesNotSupported
    @available(swift, obsoleted: 3, renamed: "multipleScenesNotSupported")
    static var MultipleScenesNotSupported: UISceneError.Code { get }
    case requestDenied
    @available(swift, obsoleted: 3, renamed: "requestDenied")
    static var RequestDenied: UISceneError.Code { get }
  }
  static var multipleScenesNotSupported: UISceneError.Code { get }
  static var requestDenied: UISceneError.Code { get }
}
