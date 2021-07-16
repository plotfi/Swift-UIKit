@_exported import Foundation


/**
 An object conforming to UISpringLoadedInteractionEffect uses UISpringLoadedInteractionEffectState
 to style the interaction view for the current springloading state.
 
 - UISpringLoadedInteractionEffectStateInactive: the view is not engaged in springloading and should be displayed with its default style.
 - UISpringLoadedInteractionEffectStatePossible: the view may springload and should provide a visual cue to the user. The default effect highlights the view.
 - UISpringLoadedInteractionEffectStateActivating: the view is about to springload. The default effect will briefly flash while in this state.
 - UISpringLoadedInteractionEffectStateActivated: the view springloaded and the activation handler is called. The default effect will restore the view to its original appearance.
 */
@available(iOS 11.0, *)
enum UISpringLoadedInteractionEffectState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case inactive
  @available(swift, obsoleted: 3, renamed: "inactive")
  static var Inactive: UISpringLoadedInteractionEffectState { get }
  case possible
  @available(swift, obsoleted: 3, renamed: "possible")
  static var Possible: UISpringLoadedInteractionEffectState { get }
  case activating
  @available(swift, obsoleted: 3, renamed: "activating")
  static var Activating: UISpringLoadedInteractionEffectState { get }
  case activated
  @available(swift, obsoleted: 3, renamed: "activated")
  static var Activated: UISpringLoadedInteractionEffectState { get }
}
@available(iOS 11.0, *)
class UISpringLoadedInteraction : NSObject, UIInteraction {
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  convenience init()

  /**
   The designated `UISpringLoadedInteraction` initializer.
   
   @param interactionBehavior The interaction behavior object controlling the springloaded interaction activation. If nil, the default behavior will be used.
   @param interactionEffect The interaction effect object styling the interaction's view. If nil, the default effect will be used.
   @param handler The handler to be performed when springloading is activated.
   @return An initialized springloaded interaction object or `nil` if the springloaded interaction could not be initialized.
   */
  init(interactionBehavior: UISpringLoadedInteractionBehavior?, interactionEffect: UISpringLoadedInteractionEffect?, activationHandler handler: @escaping (UISpringLoadedInteraction, UISpringLoadedInteractionContext) -> Void)

  /**
   A springloaded interaction with the default interaction behavior and effect.
   
   @param handler The handler to be performed when springloading is activated.
   @return An initialized springloaded interaction object or `nil` if the springloaded interaction could not be initialized.
   */
  convenience init(activationHandler handler: @escaping (UISpringLoadedInteraction, UISpringLoadedInteractionContext) -> Void)
  var interactionBehavior: UISpringLoadedInteractionBehavior { get }
  var interactionEffect: UISpringLoadedInteractionEffect { get }
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}

/**
 The interaction behavior of a `UISpringLoadedInteraction` object must adopt the `UISpringLoadedInteractionBehavior` protocol.
 */
@available(iOS 11.0, *)
protocol UISpringLoadedInteractionBehavior : NSObjectProtocol {

  /**
   Returns whether springloading should begin or continue for a given interaction.
   
   @param interaction The springloaded interaction object requesting this information
   @param context An object that provides information about the current drag.
   @return true if the interaction should begin or continue springloading.
   */
  func shouldAllow(_ interaction: UISpringLoadedInteraction, with context: UISpringLoadedInteractionContext) -> Bool

  /**
   Returns whether springloading should begin or continue for a given interaction.
   
   @param interaction The springloaded interaction object requesting this information
   @param context An object that provides information about the current drag.
   @return true if the interaction should begin or continue springloading.
   */
  @available(swift, obsoleted: 3, renamed: "shouldAllow(_:with:)")
  func shouldAllowInteraction(_ interaction: UISpringLoadedInteraction, withContext context: UISpringLoadedInteractionContext) -> Bool

  /**
   Informs the behavior that springloading for a given interaction was cancelled or activated.
   
   @param interaction The springloaded interaction object providing this information.
   */
  optional func interactionDidFinish(_ interaction: UISpringLoadedInteraction)
}

/**
 The interaction effect of a `UISpringLoadedInteraction` object must adopt the `UISpringLoadedInteractionEffect` protocol.
 It is responsible for styling the interaction view according to the current springloading state.
 */
@available(iOS 11.0, *)
protocol UISpringLoadedInteractionEffect : NSObjectProtocol {

  /**
   Informs the effect that the springloading state changed.
   
   @param interaction The springloaded interaction providing this information.
   @param context An object that provides information about the current springloading state.
   */
  func interaction(_ interaction: UISpringLoadedInteraction, didChangeWith context: UISpringLoadedInteractionContext)

  /**
   Informs the effect that the springloading state changed.
   
   @param interaction The springloaded interaction providing this information.
   @param context An object that provides information about the current springloading state.
   */
  @available(swift, obsoleted: 3, renamed: "interaction(_:didChangeWith:)")
  func interaction(_ interaction: UISpringLoadedInteraction, didChangeWithContext context: UISpringLoadedInteractionContext)
}

/**
 UISpringLoadedContext supplies information about the springloading state and current drag.
 */
@available(iOS 11.0, *)
protocol UISpringLoadedInteractionContext : NSObjectProtocol {

  /**
   The state that describes the current springloading style.
   */
  var state: UISpringLoadedInteractionEffectState { get }

  /**
   The view to which the interaction effect is applied. Defaults to the interaction's view.
   */
  var targetView: UIView? { get set }

  /**
   The `targetItem` allows to distinguish a region of the view on which the interaction is installed.
   It is convenient to set this property to a model object associated to `targetView`.
   */
  var targetItem: Any? { get set }

  /**
   Returns the point computed as the location of the current drag in a given view.
   
   @param view A view on which the drag is taking place. Specify nil to indicate the window.
   @return A point in the local coordinate system of `view`.
   */
  func location(in view: UIView?) -> CGPoint

  /**
   Returns the point computed as the location of the current drag in a given view.
   
   @param view A view on which the drag is taking place. Specify nil to indicate the window.
   @return A point in the local coordinate system of `view`.
   */
  @available(swift, obsoleted: 3, renamed: "location(in:)")
  func locationInView(_ view: UIView?) -> CGPoint
}
