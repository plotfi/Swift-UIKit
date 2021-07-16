@_exported import Foundation


/**
 * This file defines a table of standardized key codes, called "HID usages" used by USB keyboards to identify individual keys.
 *
 * A general note on Usages and languages: Due to the variation of keyboards from language to language, it is not feasible
 * to specify exact key mappings for every language. Where this list is not specific for a key function in a language, the
 * closest equivalent key position should be used, so that a keyboard may be modified for a different language by simply printing
 * different keycaps. One example is the Y key on a North American keyboard. In Germany this is typically Z. Rather than changing
 * the keyboard firmware to put the Z Usage into that place in the descriptor list, the vendor uses the Y Usage on both the North
 * American and German keyboards. This continues to be the existing practice in the industry, in order to minimize the number of
 * changes to the electronics to accommodate other languages.
 *
 * The following constants are from the USB 'HID Usage Tables' specification, revision 1.1rc3.
 */
@available(iOS 13.4, *)
enum UIKeyboardHIDUsage : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  typealias RawValue = CFIndex
  case keyboardErrorRollOver
  @available(swift, obsoleted: 3, renamed: "keyboardErrorRollOver")
  static var KeyboardErrorRollOver: UIKeyboardHIDUsage { get }
  case keyboardPOSTFail
  @available(swift, obsoleted: 3, renamed: "keyboardPOSTFail")
  static var KeyboardPOSTFail: UIKeyboardHIDUsage { get }
  case keyboardErrorUndefined
  @available(swift, obsoleted: 3, renamed: "keyboardErrorUndefined")
  static var KeyboardErrorUndefined: UIKeyboardHIDUsage { get }
  case keyboardA
  @available(swift, obsoleted: 3, renamed: "keyboardA")
  static var KeyboardA: UIKeyboardHIDUsage { get }
  case keyboardB
  @available(swift, obsoleted: 3, renamed: "keyboardB")
  static var KeyboardB: UIKeyboardHIDUsage { get }
  case keyboardC
  @available(swift, obsoleted: 3, renamed: "keyboardC")
  static var KeyboardC: UIKeyboardHIDUsage { get }
  case keyboardD
  @available(swift, obsoleted: 3, renamed: "keyboardD")
  static var KeyboardD: UIKeyboardHIDUsage { get }
  case keyboardE
  @available(swift, obsoleted: 3, renamed: "keyboardE")
  static var KeyboardE: UIKeyboardHIDUsage { get }
  case keyboardF
  @available(swift, obsoleted: 3, renamed: "keyboardF")
  static var KeyboardF: UIKeyboardHIDUsage { get }
  case keyboardG
  @available(swift, obsoleted: 3, renamed: "keyboardG")
  static var KeyboardG: UIKeyboardHIDUsage { get }
  case keyboardH
  @available(swift, obsoleted: 3, renamed: "keyboardH")
  static var KeyboardH: UIKeyboardHIDUsage { get }
  case keyboardI
  @available(swift, obsoleted: 3, renamed: "keyboardI")
  static var KeyboardI: UIKeyboardHIDUsage { get }
  case keyboardJ
  @available(swift, obsoleted: 3, renamed: "keyboardJ")
  static var KeyboardJ: UIKeyboardHIDUsage { get }
  case keyboardK
  @available(swift, obsoleted: 3, renamed: "keyboardK")
  static var KeyboardK: UIKeyboardHIDUsage { get }
  case keyboardL
  @available(swift, obsoleted: 3, renamed: "keyboardL")
  static var KeyboardL: UIKeyboardHIDUsage { get }
  case keyboardM
  @available(swift, obsoleted: 3, renamed: "keyboardM")
  static var KeyboardM: UIKeyboardHIDUsage { get }
  case keyboardN
  @available(swift, obsoleted: 3, renamed: "keyboardN")
  static var KeyboardN: UIKeyboardHIDUsage { get }
  case keyboardO
  @available(swift, obsoleted: 3, renamed: "keyboardO")
  static var KeyboardO: UIKeyboardHIDUsage { get }
  case keyboardP
  @available(swift, obsoleted: 3, renamed: "keyboardP")
  static var KeyboardP: UIKeyboardHIDUsage { get }
  case keyboardQ
  @available(swift, obsoleted: 3, renamed: "keyboardQ")
  static var KeyboardQ: UIKeyboardHIDUsage { get }
  case keyboardR
  @available(swift, obsoleted: 3, renamed: "keyboardR")
  static var KeyboardR: UIKeyboardHIDUsage { get }
  case keyboardS
  @available(swift, obsoleted: 3, renamed: "keyboardS")
  static var KeyboardS: UIKeyboardHIDUsage { get }
  case keyboardT
  @available(swift, obsoleted: 3, renamed: "keyboardT")
  static var KeyboardT: UIKeyboardHIDUsage { get }
  case keyboardU
  @available(swift, obsoleted: 3, renamed: "keyboardU")
  static var KeyboardU: UIKeyboardHIDUsage { get }
  case keyboardV
  @available(swift, obsoleted: 3, renamed: "keyboardV")
  static var KeyboardV: UIKeyboardHIDUsage { get }
  case keyboardW
  @available(swift, obsoleted: 3, renamed: "keyboardW")
  static var KeyboardW: UIKeyboardHIDUsage { get }
  case keyboardX
  @available(swift, obsoleted: 3, renamed: "keyboardX")
  static var KeyboardX: UIKeyboardHIDUsage { get }
  case keyboardY
  @available(swift, obsoleted: 3, renamed: "keyboardY")
  static var KeyboardY: UIKeyboardHIDUsage { get }
  case keyboardZ
  @available(swift, obsoleted: 3, renamed: "keyboardZ")
  static var KeyboardZ: UIKeyboardHIDUsage { get }
  case keyboard1
  @available(swift, obsoleted: 3, renamed: "keyboard1")
  static var Keyboard1: UIKeyboardHIDUsage { get }
  case keyboard2
  @available(swift, obsoleted: 3, renamed: "keyboard2")
  static var Keyboard2: UIKeyboardHIDUsage { get }
  case keyboard3
  @available(swift, obsoleted: 3, renamed: "keyboard3")
  static var Keyboard3: UIKeyboardHIDUsage { get }
  case keyboard4
  @available(swift, obsoleted: 3, renamed: "keyboard4")
  static var Keyboard4: UIKeyboardHIDUsage { get }
  case keyboard5
  @available(swift, obsoleted: 3, renamed: "keyboard5")
  static var Keyboard5: UIKeyboardHIDUsage { get }
  case keyboard6
  @available(swift, obsoleted: 3, renamed: "keyboard6")
  static var Keyboard6: UIKeyboardHIDUsage { get }
  case keyboard7
  @available(swift, obsoleted: 3, renamed: "keyboard7")
  static var Keyboard7: UIKeyboardHIDUsage { get }
  case keyboard8
  @available(swift, obsoleted: 3, renamed: "keyboard8")
  static var Keyboard8: UIKeyboardHIDUsage { get }
  case keyboard9
  @available(swift, obsoleted: 3, renamed: "keyboard9")
  static var Keyboard9: UIKeyboardHIDUsage { get }
  case keyboard0
  @available(swift, obsoleted: 3, renamed: "keyboard0")
  static var Keyboard0: UIKeyboardHIDUsage { get }
  case keyboardReturnOrEnter
  @available(swift, obsoleted: 3, renamed: "keyboardReturnOrEnter")
  static var KeyboardReturnOrEnter: UIKeyboardHIDUsage { get }
  case keyboardEscape
  @available(swift, obsoleted: 3, renamed: "keyboardEscape")
  static var KeyboardEscape: UIKeyboardHIDUsage { get }
  case keyboardDeleteOrBackspace
  @available(swift, obsoleted: 3, renamed: "keyboardDeleteOrBackspace")
  static var KeyboardDeleteOrBackspace: UIKeyboardHIDUsage { get }
  case keyboardTab
  @available(swift, obsoleted: 3, renamed: "keyboardTab")
  static var KeyboardTab: UIKeyboardHIDUsage { get }
  case keyboardSpacebar
  @available(swift, obsoleted: 3, renamed: "keyboardSpacebar")
  static var KeyboardSpacebar: UIKeyboardHIDUsage { get }
  case keyboardHyphen
  @available(swift, obsoleted: 3, renamed: "keyboardHyphen")
  static var KeyboardHyphen: UIKeyboardHIDUsage { get }
  case keyboardEqualSign
  @available(swift, obsoleted: 3, renamed: "keyboardEqualSign")
  static var KeyboardEqualSign: UIKeyboardHIDUsage { get }
  case keyboardOpenBracket
  @available(swift, obsoleted: 3, renamed: "keyboardOpenBracket")
  static var KeyboardOpenBracket: UIKeyboardHIDUsage { get }
  case keyboardCloseBracket
  @available(swift, obsoleted: 3, renamed: "keyboardCloseBracket")
  static var KeyboardCloseBracket: UIKeyboardHIDUsage { get }
  case keyboardBackslash
  @available(swift, obsoleted: 3, renamed: "keyboardBackslash")
  static var KeyboardBackslash: UIKeyboardHIDUsage { get }
  case keyboardNonUSPound
  @available(swift, obsoleted: 3, renamed: "keyboardNonUSPound")
  static var KeyboardNonUSPound: UIKeyboardHIDUsage { get }
  case keyboardSemicolon
  @available(swift, obsoleted: 3, renamed: "keyboardSemicolon")
  static var KeyboardSemicolon: UIKeyboardHIDUsage { get }
  case keyboardQuote
  @available(swift, obsoleted: 3, renamed: "keyboardQuote")
  static var KeyboardQuote: UIKeyboardHIDUsage { get }
  case keyboardGraveAccentAndTilde
  @available(swift, obsoleted: 3, renamed: "keyboardGraveAccentAndTilde")
  static var KeyboardGraveAccentAndTilde: UIKeyboardHIDUsage { get }
  case keyboardComma
  @available(swift, obsoleted: 3, renamed: "keyboardComma")
  static var KeyboardComma: UIKeyboardHIDUsage { get }
  case keyboardPeriod
  @available(swift, obsoleted: 3, renamed: "keyboardPeriod")
  static var KeyboardPeriod: UIKeyboardHIDUsage { get }
  case keyboardSlash
  @available(swift, obsoleted: 3, renamed: "keyboardSlash")
  static var KeyboardSlash: UIKeyboardHIDUsage { get }
  case keyboardCapsLock
  @available(swift, obsoleted: 3, renamed: "keyboardCapsLock")
  static var KeyboardCapsLock: UIKeyboardHIDUsage { get }
  case keyboardF1
  @available(swift, obsoleted: 3, renamed: "keyboardF1")
  static var KeyboardF1: UIKeyboardHIDUsage { get }
  case keyboardF2
  @available(swift, obsoleted: 3, renamed: "keyboardF2")
  static var KeyboardF2: UIKeyboardHIDUsage { get }
  case keyboardF3
  @available(swift, obsoleted: 3, renamed: "keyboardF3")
  static var KeyboardF3: UIKeyboardHIDUsage { get }
  case keyboardF4
  @available(swift, obsoleted: 3, renamed: "keyboardF4")
  static var KeyboardF4: UIKeyboardHIDUsage { get }
  case keyboardF5
  @available(swift, obsoleted: 3, renamed: "keyboardF5")
  static var KeyboardF5: UIKeyboardHIDUsage { get }
  case keyboardF6
  @available(swift, obsoleted: 3, renamed: "keyboardF6")
  static var KeyboardF6: UIKeyboardHIDUsage { get }
  case keyboardF7
  @available(swift, obsoleted: 3, renamed: "keyboardF7")
  static var KeyboardF7: UIKeyboardHIDUsage { get }
  case keyboardF8
  @available(swift, obsoleted: 3, renamed: "keyboardF8")
  static var KeyboardF8: UIKeyboardHIDUsage { get }
  case keyboardF9
  @available(swift, obsoleted: 3, renamed: "keyboardF9")
  static var KeyboardF9: UIKeyboardHIDUsage { get }
  case keyboardF10
  @available(swift, obsoleted: 3, renamed: "keyboardF10")
  static var KeyboardF10: UIKeyboardHIDUsage { get }
  case keyboardF11
  @available(swift, obsoleted: 3, renamed: "keyboardF11")
  static var KeyboardF11: UIKeyboardHIDUsage { get }
  case keyboardF12
  @available(swift, obsoleted: 3, renamed: "keyboardF12")
  static var KeyboardF12: UIKeyboardHIDUsage { get }
  case keyboardPrintScreen
  @available(swift, obsoleted: 3, renamed: "keyboardPrintScreen")
  static var KeyboardPrintScreen: UIKeyboardHIDUsage { get }
  case keyboardScrollLock
  @available(swift, obsoleted: 3, renamed: "keyboardScrollLock")
  static var KeyboardScrollLock: UIKeyboardHIDUsage { get }
  case keyboardPause
  @available(swift, obsoleted: 3, renamed: "keyboardPause")
  static var KeyboardPause: UIKeyboardHIDUsage { get }
  case keyboardInsert
  @available(swift, obsoleted: 3, renamed: "keyboardInsert")
  static var KeyboardInsert: UIKeyboardHIDUsage { get }
  case keyboardHome
  @available(swift, obsoleted: 3, renamed: "keyboardHome")
  static var KeyboardHome: UIKeyboardHIDUsage { get }
  case keyboardPageUp
  @available(swift, obsoleted: 3, renamed: "keyboardPageUp")
  static var KeyboardPageUp: UIKeyboardHIDUsage { get }
  case keyboardDeleteForward
  @available(swift, obsoleted: 3, renamed: "keyboardDeleteForward")
  static var KeyboardDeleteForward: UIKeyboardHIDUsage { get }
  case keyboardEnd
  @available(swift, obsoleted: 3, renamed: "keyboardEnd")
  static var KeyboardEnd: UIKeyboardHIDUsage { get }
  case keyboardPageDown
  @available(swift, obsoleted: 3, renamed: "keyboardPageDown")
  static var KeyboardPageDown: UIKeyboardHIDUsage { get }
  case keyboardRightArrow
  @available(swift, obsoleted: 3, renamed: "keyboardRightArrow")
  static var KeyboardRightArrow: UIKeyboardHIDUsage { get }
  case keyboardLeftArrow
  @available(swift, obsoleted: 3, renamed: "keyboardLeftArrow")
  static var KeyboardLeftArrow: UIKeyboardHIDUsage { get }
  case keyboardDownArrow
  @available(swift, obsoleted: 3, renamed: "keyboardDownArrow")
  static var KeyboardDownArrow: UIKeyboardHIDUsage { get }
  case keyboardUpArrow
  @available(swift, obsoleted: 3, renamed: "keyboardUpArrow")
  static var KeyboardUpArrow: UIKeyboardHIDUsage { get }
  case keypadNumLock
  @available(swift, obsoleted: 3, renamed: "keypadNumLock")
  static var KeypadNumLock: UIKeyboardHIDUsage { get }
  case keypadSlash
  @available(swift, obsoleted: 3, renamed: "keypadSlash")
  static var KeypadSlash: UIKeyboardHIDUsage { get }
  case keypadAsterisk
  @available(swift, obsoleted: 3, renamed: "keypadAsterisk")
  static var KeypadAsterisk: UIKeyboardHIDUsage { get }
  case keypadHyphen
  @available(swift, obsoleted: 3, renamed: "keypadHyphen")
  static var KeypadHyphen: UIKeyboardHIDUsage { get }
  case keypadPlus
  @available(swift, obsoleted: 3, renamed: "keypadPlus")
  static var KeypadPlus: UIKeyboardHIDUsage { get }
  case keypadEnter
  @available(swift, obsoleted: 3, renamed: "keypadEnter")
  static var KeypadEnter: UIKeyboardHIDUsage { get }
  case keypad1
  @available(swift, obsoleted: 3, renamed: "keypad1")
  static var Keypad1: UIKeyboardHIDUsage { get }
  case keypad2
  @available(swift, obsoleted: 3, renamed: "keypad2")
  static var Keypad2: UIKeyboardHIDUsage { get }
  case keypad3
  @available(swift, obsoleted: 3, renamed: "keypad3")
  static var Keypad3: UIKeyboardHIDUsage { get }
  case keypad4
  @available(swift, obsoleted: 3, renamed: "keypad4")
  static var Keypad4: UIKeyboardHIDUsage { get }
  case keypad5
  @available(swift, obsoleted: 3, renamed: "keypad5")
  static var Keypad5: UIKeyboardHIDUsage { get }
  case keypad6
  @available(swift, obsoleted: 3, renamed: "keypad6")
  static var Keypad6: UIKeyboardHIDUsage { get }
  case keypad7
  @available(swift, obsoleted: 3, renamed: "keypad7")
  static var Keypad7: UIKeyboardHIDUsage { get }
  case keypad8
  @available(swift, obsoleted: 3, renamed: "keypad8")
  static var Keypad8: UIKeyboardHIDUsage { get }
  case keypad9
  @available(swift, obsoleted: 3, renamed: "keypad9")
  static var Keypad9: UIKeyboardHIDUsage { get }
  case keypad0
  @available(swift, obsoleted: 3, renamed: "keypad0")
  static var Keypad0: UIKeyboardHIDUsage { get }
  case keypadPeriod
  @available(swift, obsoleted: 3, renamed: "keypadPeriod")
  static var KeypadPeriod: UIKeyboardHIDUsage { get }
  case keyboardNonUSBackslash
  @available(swift, obsoleted: 3, renamed: "keyboardNonUSBackslash")
  static var KeyboardNonUSBackslash: UIKeyboardHIDUsage { get }
  case keyboardApplication
  @available(swift, obsoleted: 3, renamed: "keyboardApplication")
  static var KeyboardApplication: UIKeyboardHIDUsage { get }
  case keyboardPower
  @available(swift, obsoleted: 3, renamed: "keyboardPower")
  static var KeyboardPower: UIKeyboardHIDUsage { get }
  case keypadEqualSign
  @available(swift, obsoleted: 3, renamed: "keypadEqualSign")
  static var KeypadEqualSign: UIKeyboardHIDUsage { get }
  case keyboardF13
  @available(swift, obsoleted: 3, renamed: "keyboardF13")
  static var KeyboardF13: UIKeyboardHIDUsage { get }
  case keyboardF14
  @available(swift, obsoleted: 3, renamed: "keyboardF14")
  static var KeyboardF14: UIKeyboardHIDUsage { get }
  case keyboardF15
  @available(swift, obsoleted: 3, renamed: "keyboardF15")
  static var KeyboardF15: UIKeyboardHIDUsage { get }
  case keyboardF16
  @available(swift, obsoleted: 3, renamed: "keyboardF16")
  static var KeyboardF16: UIKeyboardHIDUsage { get }
  case keyboardF17
  @available(swift, obsoleted: 3, renamed: "keyboardF17")
  static var KeyboardF17: UIKeyboardHIDUsage { get }
  case keyboardF18
  @available(swift, obsoleted: 3, renamed: "keyboardF18")
  static var KeyboardF18: UIKeyboardHIDUsage { get }
  case keyboardF19
  @available(swift, obsoleted: 3, renamed: "keyboardF19")
  static var KeyboardF19: UIKeyboardHIDUsage { get }
  case keyboardF20
  @available(swift, obsoleted: 3, renamed: "keyboardF20")
  static var KeyboardF20: UIKeyboardHIDUsage { get }
  case keyboardF21
  @available(swift, obsoleted: 3, renamed: "keyboardF21")
  static var KeyboardF21: UIKeyboardHIDUsage { get }
  case keyboardF22
  @available(swift, obsoleted: 3, renamed: "keyboardF22")
  static var KeyboardF22: UIKeyboardHIDUsage { get }
  case keyboardF23
  @available(swift, obsoleted: 3, renamed: "keyboardF23")
  static var KeyboardF23: UIKeyboardHIDUsage { get }
  case keyboardF24
  @available(swift, obsoleted: 3, renamed: "keyboardF24")
  static var KeyboardF24: UIKeyboardHIDUsage { get }
  case keyboardExecute
  @available(swift, obsoleted: 3, renamed: "keyboardExecute")
  static var KeyboardExecute: UIKeyboardHIDUsage { get }
  case keyboardHelp
  @available(swift, obsoleted: 3, renamed: "keyboardHelp")
  static var KeyboardHelp: UIKeyboardHIDUsage { get }
  case keyboardMenu
  @available(swift, obsoleted: 3, renamed: "keyboardMenu")
  static var KeyboardMenu: UIKeyboardHIDUsage { get }
  case keyboardSelect
  @available(swift, obsoleted: 3, renamed: "keyboardSelect")
  static var KeyboardSelect: UIKeyboardHIDUsage { get }
  case keyboardStop
  @available(swift, obsoleted: 3, renamed: "keyboardStop")
  static var KeyboardStop: UIKeyboardHIDUsage { get }
  case keyboardAgain
  @available(swift, obsoleted: 3, renamed: "keyboardAgain")
  static var KeyboardAgain: UIKeyboardHIDUsage { get }
  case keyboardUndo
  @available(swift, obsoleted: 3, renamed: "keyboardUndo")
  static var KeyboardUndo: UIKeyboardHIDUsage { get }
  case keyboardCut
  @available(swift, obsoleted: 3, renamed: "keyboardCut")
  static var KeyboardCut: UIKeyboardHIDUsage { get }
  case keyboardCopy
  @available(swift, obsoleted: 3, renamed: "keyboardCopy")
  static var KeyboardCopy: UIKeyboardHIDUsage { get }
  case keyboardPaste
  @available(swift, obsoleted: 3, renamed: "keyboardPaste")
  static var KeyboardPaste: UIKeyboardHIDUsage { get }
  case keyboardFind
  @available(swift, obsoleted: 3, renamed: "keyboardFind")
  static var KeyboardFind: UIKeyboardHIDUsage { get }
  case keyboardMute
  @available(swift, obsoleted: 3, renamed: "keyboardMute")
  static var KeyboardMute: UIKeyboardHIDUsage { get }
  case keyboardVolumeUp
  @available(swift, obsoleted: 3, renamed: "keyboardVolumeUp")
  static var KeyboardVolumeUp: UIKeyboardHIDUsage { get }
  case keyboardVolumeDown
  @available(swift, obsoleted: 3, renamed: "keyboardVolumeDown")
  static var KeyboardVolumeDown: UIKeyboardHIDUsage { get }
  case keyboardLockingCapsLock
  @available(swift, obsoleted: 3, renamed: "keyboardLockingCapsLock")
  static var KeyboardLockingCapsLock: UIKeyboardHIDUsage { get }
  case keyboardLockingNumLock
  @available(swift, obsoleted: 3, renamed: "keyboardLockingNumLock")
  static var KeyboardLockingNumLock: UIKeyboardHIDUsage { get }
  case keyboardLockingScrollLock
  @available(swift, obsoleted: 3, renamed: "keyboardLockingScrollLock")
  static var KeyboardLockingScrollLock: UIKeyboardHIDUsage { get }
  case keypadComma
  @available(swift, obsoleted: 3, renamed: "keypadComma")
  static var KeypadComma: UIKeyboardHIDUsage { get }
  case keypadEqualSignAS400
  @available(swift, obsoleted: 3, renamed: "keypadEqualSignAS400")
  static var KeypadEqualSignAS400: UIKeyboardHIDUsage { get }
  case keyboardInternational1
  @available(swift, obsoleted: 3, renamed: "keyboardInternational1")
  static var KeyboardInternational1: UIKeyboardHIDUsage { get }
  case keyboardInternational2
  @available(swift, obsoleted: 3, renamed: "keyboardInternational2")
  static var KeyboardInternational2: UIKeyboardHIDUsage { get }
  case keyboardInternational3
  @available(swift, obsoleted: 3, renamed: "keyboardInternational3")
  static var KeyboardInternational3: UIKeyboardHIDUsage { get }
  case keyboardInternational4
  @available(swift, obsoleted: 3, renamed: "keyboardInternational4")
  static var KeyboardInternational4: UIKeyboardHIDUsage { get }
  case keyboardInternational5
  @available(swift, obsoleted: 3, renamed: "keyboardInternational5")
  static var KeyboardInternational5: UIKeyboardHIDUsage { get }
  case keyboardInternational6
  @available(swift, obsoleted: 3, renamed: "keyboardInternational6")
  static var KeyboardInternational6: UIKeyboardHIDUsage { get }
  case keyboardInternational7
  @available(swift, obsoleted: 3, renamed: "keyboardInternational7")
  static var KeyboardInternational7: UIKeyboardHIDUsage { get }
  case keyboardInternational8
  @available(swift, obsoleted: 3, renamed: "keyboardInternational8")
  static var KeyboardInternational8: UIKeyboardHIDUsage { get }
  case keyboardInternational9
  @available(swift, obsoleted: 3, renamed: "keyboardInternational9")
  static var KeyboardInternational9: UIKeyboardHIDUsage { get }
  case keyboardLANG1
  @available(swift, obsoleted: 3, renamed: "keyboardLANG1")
  static var KeyboardLANG1: UIKeyboardHIDUsage { get }
  case keyboardLANG2
  @available(swift, obsoleted: 3, renamed: "keyboardLANG2")
  static var KeyboardLANG2: UIKeyboardHIDUsage { get }
  case keyboardLANG3
  @available(swift, obsoleted: 3, renamed: "keyboardLANG3")
  static var KeyboardLANG3: UIKeyboardHIDUsage { get }
  case keyboardLANG4
  @available(swift, obsoleted: 3, renamed: "keyboardLANG4")
  static var KeyboardLANG4: UIKeyboardHIDUsage { get }
  case keyboardLANG5
  @available(swift, obsoleted: 3, renamed: "keyboardLANG5")
  static var KeyboardLANG5: UIKeyboardHIDUsage { get }
  case keyboardLANG6
  @available(swift, obsoleted: 3, renamed: "keyboardLANG6")
  static var KeyboardLANG6: UIKeyboardHIDUsage { get }
  case keyboardLANG7
  @available(swift, obsoleted: 3, renamed: "keyboardLANG7")
  static var KeyboardLANG7: UIKeyboardHIDUsage { get }
  case keyboardLANG8
  @available(swift, obsoleted: 3, renamed: "keyboardLANG8")
  static var KeyboardLANG8: UIKeyboardHIDUsage { get }
  case keyboardLANG9
  @available(swift, obsoleted: 3, renamed: "keyboardLANG9")
  static var KeyboardLANG9: UIKeyboardHIDUsage { get }
  case keyboardAlternateErase
  @available(swift, obsoleted: 3, renamed: "keyboardAlternateErase")
  static var KeyboardAlternateErase: UIKeyboardHIDUsage { get }
  case keyboardSysReqOrAttention
  @available(swift, obsoleted: 3, renamed: "keyboardSysReqOrAttention")
  static var KeyboardSysReqOrAttention: UIKeyboardHIDUsage { get }
  case keyboardCancel
  @available(swift, obsoleted: 3, renamed: "keyboardCancel")
  static var KeyboardCancel: UIKeyboardHIDUsage { get }
  case keyboardClear
  @available(swift, obsoleted: 3, renamed: "keyboardClear")
  static var KeyboardClear: UIKeyboardHIDUsage { get }
  case keyboardPrior
  @available(swift, obsoleted: 3, renamed: "keyboardPrior")
  static var KeyboardPrior: UIKeyboardHIDUsage { get }
  case keyboardReturn
  @available(swift, obsoleted: 3, renamed: "keyboardReturn")
  static var KeyboardReturn: UIKeyboardHIDUsage { get }
  case keyboardSeparator
  @available(swift, obsoleted: 3, renamed: "keyboardSeparator")
  static var KeyboardSeparator: UIKeyboardHIDUsage { get }
  case keyboardOut
  @available(swift, obsoleted: 3, renamed: "keyboardOut")
  static var KeyboardOut: UIKeyboardHIDUsage { get }
  case keyboardOper
  @available(swift, obsoleted: 3, renamed: "keyboardOper")
  static var KeyboardOper: UIKeyboardHIDUsage { get }
  case keyboardClearOrAgain
  @available(swift, obsoleted: 3, renamed: "keyboardClearOrAgain")
  static var KeyboardClearOrAgain: UIKeyboardHIDUsage { get }
  case keyboardCrSelOrProps
  @available(swift, obsoleted: 3, renamed: "keyboardCrSelOrProps")
  static var KeyboardCrSelOrProps: UIKeyboardHIDUsage { get }
  case keyboardExSel
  @available(swift, obsoleted: 3, renamed: "keyboardExSel")
  static var KeyboardExSel: UIKeyboardHIDUsage { get }
  case keyboardLeftControl
  @available(swift, obsoleted: 3, renamed: "keyboardLeftControl")
  static var KeyboardLeftControl: UIKeyboardHIDUsage { get }
  case keyboardLeftShift
  @available(swift, obsoleted: 3, renamed: "keyboardLeftShift")
  static var KeyboardLeftShift: UIKeyboardHIDUsage { get }
  case keyboardLeftAlt
  @available(swift, obsoleted: 3, renamed: "keyboardLeftAlt")
  static var KeyboardLeftAlt: UIKeyboardHIDUsage { get }
  case keyboardLeftGUI
  @available(swift, obsoleted: 3, renamed: "keyboardLeftGUI")
  static var KeyboardLeftGUI: UIKeyboardHIDUsage { get }
  case keyboardRightControl
  @available(swift, obsoleted: 3, renamed: "keyboardRightControl")
  static var KeyboardRightControl: UIKeyboardHIDUsage { get }
  case keyboardRightShift
  @available(swift, obsoleted: 3, renamed: "keyboardRightShift")
  static var KeyboardRightShift: UIKeyboardHIDUsage { get }
  case keyboardRightAlt
  @available(swift, obsoleted: 3, renamed: "keyboardRightAlt")
  static var KeyboardRightAlt: UIKeyboardHIDUsage { get }
  case keyboardRightGUI
  @available(swift, obsoleted: 3, renamed: "keyboardRightGUI")
  static var KeyboardRightGUI: UIKeyboardHIDUsage { get }
  case keyboard_Reserved
  @available(swift, obsoleted: 3, renamed: "keyboard_Reserved")
  static var Keyboard_Reserved: UIKeyboardHIDUsage { get }
  static var keyboardHangul: UIKeyboardHIDUsage { get }
  static var keyboardHanja: UIKeyboardHIDUsage { get }
  static var keyboardKanaSwitch: UIKeyboardHIDUsage { get }
  static var keyboardAlphanumericSwitch: UIKeyboardHIDUsage { get }
  static var keyboardKatakana: UIKeyboardHIDUsage { get }
  static var keyboardHiragana: UIKeyboardHIDUsage { get }
  static var keyboardZenkakuHankakuKanji: UIKeyboardHIDUsage { get }
}
