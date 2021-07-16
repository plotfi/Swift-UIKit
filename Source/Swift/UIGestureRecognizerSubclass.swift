@_exported import Foundation

extension UIGestureRecognizer {
  func ignore(_ touch: UITouch, for event: UIEvent)
  @available(swift, obsoleted: 3, renamed: "ignore(_:for:)")
  func ignoreTouch(_ touch: UITouch, forEvent event: UIEvent)
  @available(iOS 9.0, *)
  func ignore(_ button: UIPress, for event: UIPressesEvent)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "ignore(_:for:)")
  func ignorePress(_ button: UIPress, forEvent event: UIPressesEvent)
  func reset()
  func canPrevent(_ preventedGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(swift, obsoleted: 3, renamed: "canPrevent(_:)")
  func canPreventGestureRecognizer(_ preventedGestureRecognizer: UIGestureRecognizer) -> Bool
  func canBePrevented(by preventingGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(swift, obsoleted: 3, renamed: "canBePrevented(by:)")
  func canBePreventedByGestureRecognizer(_ preventingGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func shouldRequireFailure(of otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "shouldRequireFailure(of:)")
  func shouldRequireFailureOfGestureRecognizer(_ otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func shouldBeRequiredToFail(by otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "shouldBeRequiredToFail(by:)")
  func shouldBeRequiredToFailByGestureRecognizer(_ otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 13.4, *)
  func shouldReceive(_ event: UIEvent) -> Bool
  @available(iOS 13.4, *)
  @available(swift, obsoleted: 3, renamed: "shouldReceive(_:)")
  func shouldReceiveEvent(_ event: UIEvent) -> Bool
  func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent)
  @available(swift, obsoleted: 3, renamed: "touchesBegan(_:with:)")
  func touchesBegan(_ touches: Set<UITouch>, withEvent event: UIEvent)
  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent)
  @available(swift, obsoleted: 3, renamed: "touchesMoved(_:with:)")
  func touchesMoved(_ touches: Set<UITouch>, withEvent event: UIEvent)
  func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent)
  @available(swift, obsoleted: 3, renamed: "touchesEnded(_:with:)")
  func touchesEnded(_ touches: Set<UITouch>, withEvent event: UIEvent)
  func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent)
  @available(swift, obsoleted: 3, renamed: "touchesCancelled(_:with:)")
  func touchesCancelled(_ touches: Set<UITouch>, withEvent event: UIEvent)
  @available(iOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>)
  @available(iOS 9.0, *)
  func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesBegan(_:with:)")
  func pressesBegan(_ presses: Set<UIPress>, withEvent event: UIPressesEvent)
  @available(iOS 9.0, *)
  func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesChanged(_:with:)")
  func pressesChanged(_ presses: Set<UIPress>, withEvent event: UIPressesEvent)
  @available(iOS 9.0, *)
  func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesEnded(_:with:)")
  func pressesEnded(_ presses: Set<UIPress>, withEvent event: UIPressesEvent)
  @available(iOS 9.0, *)
  func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesCancelled(_:with:)")
  func pressesCancelled(_ presses: Set<UIPress>, withEvent event: UIPressesEvent)
}
