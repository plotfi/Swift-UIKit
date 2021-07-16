@_exported import Foundation

@available(iOS 12.1, *)
enum UIPencilPreferredAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case ignore
  @available(swift, obsoleted: 3, renamed: "ignore")
  static var Ignore: UIPencilPreferredAction { get }
  case switchEraser
  @available(swift, obsoleted: 3, renamed: "switchEraser")
  static var SwitchEraser: UIPencilPreferredAction { get }
  case switchPrevious
  @available(swift, obsoleted: 3, renamed: "switchPrevious")
  static var SwitchPrevious: UIPencilPreferredAction { get }
  case showColorPalette
  @available(swift, obsoleted: 3, renamed: "showColorPalette")
  static var ShowColorPalette: UIPencilPreferredAction { get }
}
@available(iOS 12.1, *)
class UIPencilInteraction : NSObject, UIInteraction {
  class var preferredTapAction: UIPencilPreferredAction { get }
  class var prefersPencilOnlyDrawing: Bool { get }
  weak var delegate: @sil_weak UIPencilInteractionDelegate?
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  init()
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 12.1, *)
protocol UIPencilInteractionDelegate : NSObjectProtocol {
  optional func pencilInteractionDidTap(_ interaction: UIPencilInteraction)
}
