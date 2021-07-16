@_exported import Foundation


/// UIFocusAnimationContext is used to provide UIKit-determined context about animations that are related to a focus update.
@available(iOS 11.0, *)
protocol UIFocusAnimationContext : NSObjectProtocol {

  /// The duration of the main animations in seconds.
  var duration: TimeInterval { get }
}

/// UIFocusAnimationCoordinator is used to coordinate disparate animations that are related to a focus update.
@available(iOS 9.0, *)
class UIFocusAnimationCoordinator : NSObject {

  /**
   Specifies focus-related animations that should be coordinated with the animations of the focusing or un-focusing view.
   
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the main animation completes.
   (Note that this may not be after all the coordinated animations specified by the call complete if the duration is not inherited.)
   
   It is perfectly legitimate to only specify a completion block.
   */
  func addCoordinatedAnimations(_ animations: (() -> Void)?, completion: (() -> Void)? = nil)

  /**
   Specifies focus-related animations that should be coordinated with the animations of the focusing or un-focusing view.
   
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the main animation completes.
   (Note that this may not be after all the coordinated animations specified by the call complete if the duration is not inherited.)
   
   It is perfectly legitimate to only specify a completion block.
   */
  func addCoordinatedAnimations(_ animations: (() -> Void)?) async

  /**
   Specifies focus-related animations that should be coordinated with the animations of the focusing item.
  
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the UIKit-defined animations complete.
  
   It is perfectly legitimate to only specify a completion block.
  
   A context object is provided in the animation block with details of the UIKit-defined animations being run for the focusing item.
   */
  @available(iOS 11.0, *)
  func addCoordinatedFocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?, completion: (() -> Void)? = nil)

  /**
   Specifies focus-related animations that should be coordinated with the animations of the focusing item.
  
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the UIKit-defined animations complete.
  
   It is perfectly legitimate to only specify a completion block.
  
   A context object is provided in the animation block with details of the UIKit-defined animations being run for the focusing item.
   */
  @available(iOS 11.0, *)
  func addCoordinatedFocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?) async

  /**
   Specifies focus-related animations that should be coordinated with the animations of the un-focusing item.
  
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the UIKit-defined animations complete.
  
   It is perfectly legitimate to only specify a completion block.
  
   A context object is provided in the animation block with details of the UIKit-defined animations being run for the un-focusing item.
   */
  @available(iOS 11.0, *)
  func addCoordinatedUnfocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?, completion: (() -> Void)? = nil)

  /**
   Specifies focus-related animations that should be coordinated with the animations of the un-focusing item.
  
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the UIKit-defined animations complete.
  
   It is perfectly legitimate to only specify a completion block.
  
   A context object is provided in the animation block with details of the UIKit-defined animations being run for the un-focusing item.
   */
  @available(iOS 11.0, *)
  func addCoordinatedUnfocusingAnimations(_ animations: ((UIFocusAnimationContext) -> Void)?) async
  init()
}
