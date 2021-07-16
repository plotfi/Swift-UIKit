@_exported import Foundation

@available(iOS 13.0, *)
class UISceneActivationConditions : NSObject, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  @NSCopying var canActivateForTargetContentIdentifierPredicate: NSPredicate
  @NSCopying var prefersToActivateForTargetContentIdentifierPredicate: NSPredicate
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
}
extension NSUserActivity {
}
