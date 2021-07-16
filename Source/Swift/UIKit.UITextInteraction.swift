@_exported import Foundation

enum UITextInteractionMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case editable
  @available(swift, obsoleted: 3, renamed: "editable")
  static var Editable: UITextInteractionMode { get }
  case nonEditable
  @available(swift, obsoleted: 3, renamed: "nonEditable")
  static var NonEditable: UITextInteractionMode { get }
}
protocol UITextInteractionDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  optional func interactionShouldBegin(_ interaction: UITextInteraction, at point: CGPoint) -> Bool
  @available(swift, obsoleted: 3, renamed: "interactionShouldBegin(_:at:)")
  optional func interactionShouldBegin(_ interaction: UITextInteraction, atPoint point: CGPoint) -> Bool
  @available(iOS 13.0, *)
  optional func interactionWillBegin(_ interaction: UITextInteraction)
  @available(iOS 13.0, *)
  optional func interactionDidEnd(_ interaction: UITextInteraction)
}
@available(iOS 13.0, *)
class UITextInteraction : NSObject, UIInteraction {
  weak var delegate: @sil_weak UITextInteractionDelegate?
  weak var textInput: @sil_weak (UIResponder & UITextInput)?
  var textInteractionMode: UITextInteractionMode { get }
  var gesturesForFailureRequirements: [UIGestureRecognizer] { get }
  convenience init(for mode: UITextInteractionMode)
  @available(swift, obsoleted: 3, renamed: "init(for:)")
  convenience init(forMode mode: UITextInteractionMode)
  @available(*, unavailable, renamed: "init(for:)", message: "Not available in Swift")
  class func textInteractionForMode(_ mode: UITextInteractionMode) -> Self
  init()
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
