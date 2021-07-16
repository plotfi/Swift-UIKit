@_exported import Foundation

@available(iOS 13.4, *)
class UIPointerInteraction : NSObject, UIInteraction {
  weak var delegate: @sil_weak UIPointerInteractionDelegate? { get }
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  init(delegate: UIPointerInteractionDelegate?)

  /**
   * @abstract  Call this method to cause the interaction to update the pointer in response to some event.
   */
  func invalidate()
  convenience init()
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 13.4, *)
protocol UIPointerInteractionDelegate : NSObjectProtocol {

  /**
   * @abstract Called as the pointer moves within the interaction's view.
   *
   * @param interaction    This UIPointerInteraction.
   * @param request        Request object describing the pointer's location in the interaction's view.
   * @param defaultRegion  Region representing the entire surface of the interaction's view.
   *
   * @return A UIPointerRegion in which to apply a pointer style. Return nil to indicate that this interaction should not customize the pointer for the current location.
   */
  optional func pointerInteraction(_ interaction: UIPointerInteraction, regionFor request: UIPointerRegionRequest, defaultRegion: UIPointerRegion) -> UIPointerRegion?

  /**
   * @abstract Called as the pointer moves within the interaction's view.
   *
   * @param interaction    This UIPointerInteraction.
   * @param request        Request object describing the pointer's location in the interaction's view.
   * @param defaultRegion  Region representing the entire surface of the interaction's view.
   *
   * @return A UIPointerRegion in which to apply a pointer style. Return nil to indicate that this interaction should not customize the pointer for the current location.
   */
  @available(swift, obsoleted: 3, renamed: "pointerInteraction(_:regionFor:defaultRegion:)")
  optional func pointerInteraction(_ interaction: UIPointerInteraction, regionForRequest request: UIPointerRegionRequest, defaultRegion: UIPointerRegion) -> UIPointerRegion?

  /**
   * @abstract Called after the interaction receives a new UIPointerRegion from pointerInteraction:regionForRequest:defaultRegion:.
   *
   * @param interaction  This UIPointerInteraction.
   * @param region       The UIPointerRegion for which a style is being requested.
   *
   * @return A UIPointerStyle describing the desired hover effect or pointer appearance for the given UIPointerRegion.
   */
  optional func pointerInteraction(_ interaction: UIPointerInteraction, styleFor region: UIPointerRegion) -> UIPointerStyle?

  /**
   * @abstract Called after the interaction receives a new UIPointerRegion from pointerInteraction:regionForRequest:defaultRegion:.
   *
   * @param interaction  This UIPointerInteraction.
   * @param region       The UIPointerRegion for which a style is being requested.
   *
   * @return A UIPointerStyle describing the desired hover effect or pointer appearance for the given UIPointerRegion.
   */
  @available(swift, obsoleted: 3, renamed: "pointerInteraction(_:styleFor:)")
  optional func pointerInteraction(_ interaction: UIPointerInteraction, styleForRegion region: UIPointerRegion) -> UIPointerStyle?

  /**
   * @abstract Called when the pointer enters a given region.
   *
   * @param interaction  This UIPointerInteraction.
   * @param region       The UIPointerRegion the pointer is about to enter.
   * @param animator     Region entrance animator. Add animations to run them alongside the pointer's entrance animation.
   */
  optional func pointerInteraction(_ interaction: UIPointerInteraction, willEnter region: UIPointerRegion, animator: UIPointerInteractionAnimating)

  /**
   * @abstract Called when the pointer enters a given region.
   *
   * @param interaction  This UIPointerInteraction.
   * @param region       The UIPointerRegion the pointer is about to enter.
   * @param animator     Region entrance animator. Add animations to run them alongside the pointer's entrance animation.
   */
  @available(swift, obsoleted: 3, renamed: "pointerInteraction(_:willEnter:animator:)")
  optional func pointerInteraction(_ interaction: UIPointerInteraction, willEnterRegion region: UIPointerRegion, animator: UIPointerInteractionAnimating)

  /**
   * @abstract Called when the pointer exists a given region.
   *
   * @param interaction  This UIPointerInteraction.
   * @param region       The UIPointerRegion the pointer is about to exit.
   * @param animator     Region exit animator. Add animations to run them alongside the pointer's exit animation.
   */
  optional func pointerInteraction(_ interaction: UIPointerInteraction, willExit region: UIPointerRegion, animator: UIPointerInteractionAnimating)

  /**
   * @abstract Called when the pointer exists a given region.
   *
   * @param interaction  This UIPointerInteraction.
   * @param region       The UIPointerRegion the pointer is about to exit.
   * @param animator     Region exit animator. Add animations to run them alongside the pointer's exit animation.
   */
  @available(swift, obsoleted: 3, renamed: "pointerInteraction(_:willExit:animator:)")
  optional func pointerInteraction(_ interaction: UIPointerInteraction, willExitRegion region: UIPointerRegion, animator: UIPointerInteractionAnimating)
}
@available(iOS 13.4, *)
class UIPointerRegionRequest : NSObject {

  /// The location of the pointer in the interaction's view's coordinate space.
  var location: CGPoint { get }

  /// Key modifier flags representing keyboard keys pressed by the user at the time of this request.
  var modifiers: UIKeyModifierFlags { get }
  init()
}
@available(iOS 13.4, *)
protocol UIPointerInteractionAnimating : NSObjectProtocol {
  func addAnimations(_ animations: @escaping () -> Void)
  func addCompletion(_ completion: @escaping (Bool) -> Void)
  func addCompletion() async -> Bool
}
