@_exported import Foundation


/**
    @abstract An interaction that allows customizing the behavior of Scribble on text input views, or suppress it entirely in specific cases.
    By default, Scribble allows the user to enter text by handwriting directly into any view that implements UITextInput and is editable. In apps with customized text fields, you can use UIScribbleInteraction's delegate callbacks to optimize the UI for a better writing experience. For example, you might want to hide custom placeholders when writing begins, or request delaying focusing the field if it moves when gaining focus.
    In some cases it is necessary to suppress Scribble, for example if a text view also supports drawing with Apple Pencil. You may also need to suppress Scribble in views that handle Pencil events directly, like a drawing canvas, since nearby text fields could take over the Pencil events for writing.
 */
@available(iOS 14.0, *)
class UIScribbleInteraction : NSObject, UIInteraction {
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  init(delegate: UIScribbleInteractionDelegate)

  /**
      @abstract The delegate for the interaction, specified on init.
   */
  weak var delegate: @sil_weak UIScribbleInteractionDelegate? { get }

  /**
      @abstract: Indicates if the user is actively writing. It will be set to YES in between calls to scribbleInteractionWillBeginWriting: and scribbleInteractionDidFinishWriting:
  */
  var isHandlingWriting: Bool { get }

  /**
      @abstract: Indicates if the user is actively writing. It will be set to YES in between calls to scribbleInteractionWillBeginWriting: and scribbleInteractionDidFinishWriting:
  */
  @available(swift, obsoleted: 3, renamed: "isHandlingWriting")
  var handlingWriting: Bool { get }

  /**
      @abstract A readonly class property that indicates the user is likely to use Apple Pencil and Scribble to enter text instead of the keyboard. In this case it is recommended to adjust the layout of UI elements that are not optimal for direct handwriting input. For example, small or resizable text fields that expect more than a few words could be made taller and reserve some whitespace at the bottom.
   */
  class var isPencilInputExpected: Bool { get }

  /**
      @abstract A readonly class property that indicates the user is likely to use Apple Pencil and Scribble to enter text instead of the keyboard. In this case it is recommended to adjust the layout of UI elements that are not optimal for direct handwriting input. For example, small or resizable text fields that expect more than a few words could be made taller and reserve some whitespace at the bottom.
   */
  @available(swift, obsoleted: 3, renamed: "isPencilInputExpected")
  class var pencilInputExpected: Bool { get }
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 14.0, *)
protocol UIScribbleInteractionDelegate : NSObjectProtocol {

  /**
      @abstract Allows the delegate to prevent Scribble from starting at a specific location in the view. If not implemented, defaults to YES.
      You can use this callback to temporarily suppress Scribble in text input views if your app supports drawing over text or other special interaction when using Apple Pencil. In cases like this, it's recommended to provide a UI affordance for the user to toggle between drawing and handwriting.
      This callback can also return NO for views that handle Pencil events directly, like a drawing canvas, since nearby text fields could take over the Pencil events for writing.
      @param interaction The interaction asking if it can begin handling user input.
      @param location The location in the interaction's view coordinate system.
      @return Return NO to disallow writing at the specified location.
   */
  optional func scribbleInteraction(_ interaction: UIScribbleInteraction, shouldBeginAt location: CGPoint) -> Bool

  /**
      @abstract Allows the delegate to prevent Scribble from starting at a specific location in the view. If not implemented, defaults to YES.
      You can use this callback to temporarily suppress Scribble in text input views if your app supports drawing over text or other special interaction when using Apple Pencil. In cases like this, it's recommended to provide a UI affordance for the user to toggle between drawing and handwriting.
      This callback can also return NO for views that handle Pencil events directly, like a drawing canvas, since nearby text fields could take over the Pencil events for writing.
      @param interaction The interaction asking if it can begin handling user input.
      @param location The location in the interaction's view coordinate system.
      @return Return NO to disallow writing at the specified location.
   */
  @available(swift, obsoleted: 3, renamed: "scribbleInteraction(_:shouldBeginAt:)")
  optional func scribbleInteraction(_ interaction: UIScribbleInteraction, shouldBeginAtLocation location: CGPoint) -> Bool

  /**
      @abstract Allow the delegate to delay focusing (making first responder) the text input view. Normally, Scribble will focus the target input as soon as the user begins writing, but if you return YES from this callback, it will wait until the user makes a brief pause. This is useful in cases where the text input view will shift or transform when becoming first responder, which can be disruptive to a user trying to handwrite into it.
      Wherever possible it is preferable to adjust the UI behavior to avoid the layout changes, and only use delayed focus as a last resort, since transcription will happen all at once instead of incrementally.
      @param interaction The interaction asking about delaying focus.
      @return Return YES to delay focusing the text input.
   */
  optional func scribbleInteractionShouldDelayFocus(_ interaction: UIScribbleInteraction) -> Bool

  /**
      @abstract Will be called when the user begins writing into the interaction's view. This call will always be paired with a corresponding call to scribbleInteractionDidFinishWriting:. It is recommended to use this call to hide custom placeholders or other UI elements that can interfere with writing.
      @param interaction The interaction notifying about writing state changes.
   */
  optional func scribbleInteractionWillBeginWriting(_ interaction: UIScribbleInteraction)

  /**
      @abstract Will be called when the user finished writing into the interaction's view, after the last word has been transcribed and committed.
      @param interaction The interaction notifying about writing state changes.
  */
  optional func scribbleInteractionDidFinishWriting(_ interaction: UIScribbleInteraction)
}
