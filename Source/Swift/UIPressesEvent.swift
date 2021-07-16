@_exported import Foundation

@available(iOS 9.0, *)
class UIPressesEvent : UIEvent {
  var allPresses: Set<UIPress> { get }
  func presses(for gesture: UIGestureRecognizer) -> Set<UIPress>
  @available(swift, obsoleted: 3, renamed: "presses(for:)")
  func pressesForGestureRecognizer(_ gesture: UIGestureRecognizer) -> Set<UIPress>
  init()
}
