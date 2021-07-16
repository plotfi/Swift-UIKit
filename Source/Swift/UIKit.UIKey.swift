@_exported import Foundation

@available(iOS 13.4, *)
class UIKey : NSObject, NSCopying, NSCoding {

  /// @returns a string representing what would be inserted into a text field when this key is pressed.
  /// @discussion if a modifier key is held, this property will contain the modified characters according
  /// the rules for that particular modifier key (i.e., if shift is held on a Latin keyboard, this will
  /// contain capital letters). 
  var characters: String { get }

  /// @returns a string representing which characters would be inserted into a text field when this key is
  /// pressed, not taking any held modifiers into account.
  /// @discussion for Latin based languages, expect this to be always in lowercase (unmodified meaning not
  /// taking shift key into account). If only a modifier key was pressed, this property will contain an empty string.
  var charactersIgnoringModifiers: String { get }

  /// @returns a bitfield representing which modifier keys are currently being held in addition to this key.
  var modifierFlags: UIKeyModifierFlags { get }

  /// @returns the raw HID usage code for the pressed key. See UIKeyConstants.h.
  var keyCode: UIKeyboardHIDUsage { get }
  init()
  @available(iOS 13.4, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.4, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
