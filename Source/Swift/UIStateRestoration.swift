@_exported import Foundation

@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.stateRestorationViewControllerStoryboardKey")
let UIStateRestorationViewControllerStoryboardKey: String
extension UIApplication {
  @available(iOS 6.0, *)
  class let stateRestorationViewControllerStoryboardKey: String
  @available(iOS 6.0, *)
  class let stateRestorationBundleVersionKey: String
  @available(iOS 6.0, *)
  class let stateRestorationUserInterfaceIdiomKey: String
  @available(iOS 7.0, *)
  class let stateRestorationTimestampKey: String
  @available(iOS 7.0, *)
  class let stateRestorationSystemVersionKey: String
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.stateRestorationBundleVersionKey")
let UIApplicationStateRestorationBundleVersionKey: String
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.stateRestorationUserInterfaceIdiomKey")
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.stateRestorationTimestampKey")
let UIApplicationStateRestorationTimestampKey: String
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplication.stateRestorationSystemVersionKey")
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  @available(iOS 2.0, *)
  static func viewController(withRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "viewController(withRestorationIdentifierPath:coder:)")
  static func viewControllerWithRestorationIdentifierPath(_ identifierComponents: [String], coder: NSCoder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(iOS 2.0, *)
  func modelIdentifierForElement(at idx: IndexPath, in view: UIView) -> String?
  @available(swift, obsoleted: 3, renamed: "modelIdentifierForElement(at:in:)")
  func modelIdentifierForElementAtIndexPath(_ idx: IndexPath, inView view: UIView) -> String?
  @available(iOS 2.0, *)
  func indexPathForElement(withModelIdentifier identifier: String, in view: UIView) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPathForElement(withModelIdentifier:in:)")
  func indexPathForElementWithModelIdentifier(_ identifier: String, inView view: UIView) -> IndexPath?
}
protocol UIStateRestoring : NSObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: UIObjectRestoration.Type? { get }
  optional func encodeRestorableState(with coder: NSCoder)
  @available(swift, obsoleted: 3, renamed: "encodeRestorableState(with:)")
  optional func encodeRestorableStateWithCoder(_ coder: NSCoder)
  optional func decodeRestorableState(with coder: NSCoder)
  @available(swift, obsoleted: 3, renamed: "decodeRestorableState(with:)")
  optional func decodeRestorableStateWithCoder(_ coder: NSCoder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func object(withRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIStateRestoring?
  @available(swift, obsoleted: 3, renamed: "object(withRestorationIdentifierPath:coder:)")
  static func objectWithRestorationIdentifierPath(_ identifierComponents: [String], coder: NSCoder) -> UIStateRestoring?
}
