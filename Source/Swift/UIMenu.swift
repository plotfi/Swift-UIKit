@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier")
typealias UIMenuIdentifier = UIMenu.Identifier
extension UIMenu {
  @available(iOS 13.0, *)
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  @available(iOS 13.0, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIMenu.Options
    typealias ArrayLiteralElement = UIMenu.Options

    /// Show children inline in parent, instead of hierarchically
    static var displayInline: UIMenu.Options { get }

    /// Show children inline in parent, instead of hierarchically
    @available(swift, obsoleted: 3, renamed: "displayInline")
    static var DisplayInline: UIMenu.Options { get }

    /// Indicates whether the menu should be rendered with a destructive appearance in its parent
    static var destructive: UIMenu.Options { get }

    /// Indicates whether the menu should be rendered with a destructive appearance in its parent
    @available(swift, obsoleted: 3, renamed: "destructive")
    static var Destructive: UIMenu.Options { get }
  }
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Options")
typealias UIMenuOptions = UIMenu.Options
@available(iOS 13.0, *)
class UIMenu : UIMenuElement {

  /// Unique identifier.
  var identifier: UIMenu.Identifier { get }

  /// Options.
  var options: UIMenu.Options { get }

  /// The menu's sub-elements and sub-menus. On iOS 14.0, elements of your own menus are mutable, -copying a menu will produce mutable elements, and UIKit will take immutable copies of menus it receives. Prior to iOS 14.0, menus are always fully immutable.
  var children: [UIMenuElement] { get }

  /**
   * @abstract Creates a UIMenu with an empty title, nil image, automatically generated identifier, and default options.
   *
   * @param children    The menu's action-based sub-elements and sub-menus.
   *
   * @return A new UIMenu.
   */
  @available(iOS 14.0, *)
  @available(*, unavailable, message: "Use init(title:image:identifier:options:children:) instead")
  /*not inherited*/ init(children: [UIMenuElement])

  /**
   * @abstract Creates a UIMenu with an empty title, nil image, automatically generated identifier, and default options.
   *
   * @param children    The menu's action-based sub-elements and sub-menus.
   *
   * @return A new UIMenu.
   */
  @available(iOS 14.0, *)
  @available(*, unavailable, renamed: "init(children:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:identifier:options:children:) instead")
  class func menuWithChildren(_ children: [UIMenuElement]) -> UIMenu

  /**
   * @abstract Creates a UIMenu with the given arguments.
   *
   * @param title       The menu's title.
   * @param children    The menu's action-based sub-elements and sub-menus.
   *
   * @return A new UIMenu.
   */
  @available(*, unavailable, message: "Use init(title:image:identifier:options:children:) instead")
  /*not inherited*/ init(title: String, children: [UIMenuElement])

  /**
   * @abstract Creates a UIMenu with the given arguments.
   *
   * @param title       The menu's title.
   * @param children    The menu's action-based sub-elements and sub-menus.
   *
   * @return A new UIMenu.
   */
  @available(*, unavailable, renamed: "init(title:children:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:identifier:options:children:) instead")
  class func menuWithTitle(_ title: String, children: [UIMenuElement]) -> UIMenu

  /**
   * @abstract Creates a UIMenu with the given arguments.
   *
   * @param title       The menu's title.
   * @param image       Image to be displayed alongside the menu's title.
   * @param identifier  The menu's unique identifier. Pass nil to use an auto-generated identifier.
   * @param options     The menu's options.
   * @param children    The menu's action-based sub-elements and sub-menus.
   *
   * @return A new UIMenu.
   */
  @available(*, unavailable, message: "Use init(title:image:identifier:options:children:) instead")
  /*not inherited*/ init(title: String, image: UIImage?, identifier: UIMenu.Identifier?, options: UIMenu.Options = [], children: [UIMenuElement])

  /**
   * @abstract Creates a UIMenu with the given arguments.
   *
   * @param title       The menu's title.
   * @param image       Image to be displayed alongside the menu's title.
   * @param identifier  The menu's unique identifier. Pass nil to use an auto-generated identifier.
   * @param options     The menu's options.
   * @param children    The menu's action-based sub-elements and sub-menus.
   *
   * @return A new UIMenu.
   */
  @available(*, unavailable, renamed: "init(title:image:identifier:options:children:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:identifier:options:children:) instead")
  class func menuWithTitle(_ title: String, image: UIImage?, identifier: UIMenu.Identifier?, options: UIMenu.Options = [], children: [UIMenuElement]) -> UIMenu
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self

  /**
   * @abstract Copies this menu and replaces its children.
   *
   * @param newChildren  The replacement children.
   *
   * @return A copy of this menu with updated children.
   */
  func replacingChildren(_ newChildren: [UIMenuElement]) -> UIMenu

  /**
   * @abstract Copies this menu and replaces its children.
   *
   * @param newChildren  The replacement children.
   *
   * @return A copy of this menu with updated children.
   */
  @available(swift, obsoleted: 3, renamed: "replacingChildren(_:)")
  func menuByReplacingChildren(_ newChildren: [UIMenuElement]) -> UIMenu
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenu {
  /// Creates a UIMenu with the given arguments.
  ///
  /// - Parameters:
  ///   - title: The menu's title.
  ///   - image: Image to be displayed alongside the menu's title.
  ///   - identifier: The menu's unique identifier. Pass nil to use an auto-generated identifier.
  ///   - options: The menu's options.
  ///   - children: The menu's sub-elements and sub-menus.
  convenience init(title: String = "", image: UIImage? = nil, identifier: UIMenu.Identifier? = nil, options: UIMenu.Options = [], children: [UIMenuElement] = [])
}

/// Application menu top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.application")
let UIMenuApplication: UIMenu.Identifier
extension UIMenu.Identifier {

  /// Application menu top-level menu
  @available(iOS 13.0, *)
  static let application: UIMenu.Identifier

  /// File menu top-level menu
  @available(iOS 13.0, *)
  static let file: UIMenu.Identifier

  /// Edit menu top-level menu
  @available(iOS 13.0, *)
  static let edit: UIMenu.Identifier

  /// View menu top-level menu
  @available(iOS 13.0, *)
  static let view: UIMenu.Identifier

  /// Window menu top-level menu
  @available(iOS 13.0, *)
  static let window: UIMenu.Identifier

  /// Help menu top-level menu
  @available(iOS 13.0, *)
  static let help: UIMenu.Identifier

  /// About menu
  @available(iOS 13.0, *)
  static let about: UIMenu.Identifier

  /// Preferences menu
  @available(iOS 13.0, *)
  static let preferences: UIMenu.Identifier

  /// Services menu
  @available(iOS 13.0, *)
  static let services: UIMenu.Identifier

  /// Hide, Hide Others, Show All menu
  @available(iOS 13.0, *)
  static let hide: UIMenu.Identifier

  /// Quit menu
  @available(iOS 13.0, *)
  static let quit: UIMenu.Identifier

  /// New scene menu
  @available(iOS 13.0, *)
  static let newScene: UIMenu.Identifier

  /// Open Recent menu
  @available(iOS 14.0, *)
  static let openRecent: UIMenu.Identifier

  /// Close menu
  @available(iOS 13.0, *)
  static let close: UIMenu.Identifier

  /// Print menu
  @available(iOS 13.0, *)
  static let print: UIMenu.Identifier

  /// Undo, Redo menu
  @available(iOS 13.0, *)
  static let undoRedo: UIMenu.Identifier

  /// Cut, Copy, Paste, Delete, Select, Select All menu
  @available(iOS 13.0, *)
  static let standardEdit: UIMenu.Identifier

  /// Find menu; empty in the default menubar configuration. Applications should use this when adding their own Find-related menu items.
  @available(iOS 13.0, *)
  static let find: UIMenu.Identifier

  /// Replace..., Transliterate Chinese menu
  @available(iOS 13.0, *)
  static let replace: UIMenu.Identifier

  /// Share menu
  @available(iOS 13.0, *)
  static let share: UIMenu.Identifier

  /// Bold, Italics, Underline  menu
  @available(iOS 13.0, *)
  static let textStyle: UIMenu.Identifier

  /// Spelling menu contained within Edit menu
  @available(iOS 13.0, *)
  static let spelling: UIMenu.Identifier

  /// Show Spelling, Check Document Now menu
  @available(iOS 13.0, *)
  static let spellingPanel: UIMenu.Identifier

  /// Check Spelling While Typing and other spelling and grammar-checking options menu
  @available(iOS 13.0, *)
  static let spellingOptions: UIMenu.Identifier

  /// Substitutions menu contained within Edit menu
  @available(iOS 13.0, *)
  static let substitutions: UIMenu.Identifier
  @available(iOS 13.0, *)
  static let substitutionsPanel: UIMenu.Identifier

  /// Smart Copy, Smart Paste, Smart Quotes, and other substitution options menu
  @available(iOS 13.0, *)
  static let substitutionOptions: UIMenu.Identifier

  /// Transformations menu contained within Edit menu (contains Make Uppercase, Make Lowercase, Capitalize)
  @available(iOS 13.0, *)
  static let transformations: UIMenu.Identifier

  /// Speech menu contained within Edit menu (contains Speak, Speak..., Pause)
  @available(iOS 13.0, *)
  static let speech: UIMenu.Identifier

  /// Lookup menu
  @available(iOS 13.0, *)
  static let lookup: UIMenu.Identifier

  /// Learn menu
  @available(iOS 13.0, *)
  static let learn: UIMenu.Identifier

  /// Format top-level menu
  @available(iOS 13.0, *)
  static let format: UIMenu.Identifier

  /// Font menu contained within Format menu (contains UIMenuTextStyle)
  @available(iOS 13.0, *)
  static let font: UIMenu.Identifier

  /// Bigger and Smaller menu
  @available(iOS 13.0, *)
  static let textSize: UIMenu.Identifier

  /// Show Colors menu
  @available(iOS 13.0, *)
  static let textColor: UIMenu.Identifier

  /// Copy Style and Paste Style menu
  @available(iOS 13.0, *)
  static let textStylePasteboard: UIMenu.Identifier

  /// Text menu contained within Format menu (contains UIMenuAlignment and UIMenuWritingDirection)
  @available(iOS 13.0, *)
  static let text: UIMenu.Identifier

  /// Default, Right to Left, Left to Right menu
  @available(iOS 13.0, *)
  static let writingDirection: UIMenu.Identifier

  /// Align Left, Center, Justify, Align Right menu
  @available(iOS 13.0, *)
  static let alignment: UIMenu.Identifier

  /// Show/Hide and Customize Toolbar menu
  @available(iOS 13.0, *)
  static let toolbar: UIMenu.Identifier

  /// Fullscreen menu
  @available(iOS 13.0, *)
  static let fullscreen: UIMenu.Identifier

  /// Minimize, Zoom menu
  @available(iOS 13.0, *)
  static let minimizeAndZoom: UIMenu.Identifier

  /// Bring All to Front, Arrange in Front menu
  @available(iOS 13.0, *)
  static let bringAllToFront: UIMenu.Identifier

  /// Root-level menu
  @available(iOS 13.0, *)
  static let root: UIMenu.Identifier
}

/// File menu top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.file")
let UIMenuFile: UIMenu.Identifier

/// Edit menu top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.edit")
let UIMenuEdit: UIMenu.Identifier

/// View menu top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.view")
let UIMenuView: UIMenu.Identifier

/// Window menu top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.window")
let UIMenuWindow: UIMenu.Identifier

/// Help menu top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.help")
let UIMenuHelp: UIMenu.Identifier

/// About menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.about")
let UIMenuAbout: UIMenu.Identifier

/// Preferences menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.preferences")
let UIMenuPreferences: UIMenu.Identifier

/// Services menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.services")
let UIMenuServices: UIMenu.Identifier

/// Hide, Hide Others, Show All menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.hide")
let UIMenuHide: UIMenu.Identifier

/// Quit menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.quit")
let UIMenuQuit: UIMenu.Identifier

/// New scene menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.newScene")
let UIMenuNewScene: UIMenu.Identifier

/// Open Recent menu
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.openRecent")
let UIMenuOpenRecent: UIMenu.Identifier

/// Close menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.close")
let UIMenuClose: UIMenu.Identifier

/// Print menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.print")
let UIMenuPrint: UIMenu.Identifier

/// Undo, Redo menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.undoRedo")
let UIMenuUndoRedo: UIMenu.Identifier

/// Cut, Copy, Paste, Delete, Select, Select All menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.standardEdit")
let UIMenuStandardEdit: UIMenu.Identifier

/// Find menu; empty in the default menubar configuration. Applications should use this when adding their own Find-related menu items.
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.find")
let UIMenuFind: UIMenu.Identifier

/// Replace..., Transliterate Chinese menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.replace")
let UIMenuReplace: UIMenu.Identifier

/// Share menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.share")
let UIMenuShare: UIMenu.Identifier

/// Bold, Italics, Underline  menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.textStyle")
let UIMenuTextStyle: UIMenu.Identifier

/// Spelling menu contained within Edit menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.spelling")
let UIMenuSpelling: UIMenu.Identifier

/// Show Spelling, Check Document Now menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.spellingPanel")
let UIMenuSpellingPanel: UIMenu.Identifier

/// Check Spelling While Typing and other spelling and grammar-checking options menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.spellingOptions")
let UIMenuSpellingOptions: UIMenu.Identifier

/// Substitutions menu contained within Edit menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.substitutions")
let UIMenuSubstitutions: UIMenu.Identifier
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.substitutionsPanel")
let UIMenuSubstitutionsPanel: UIMenu.Identifier

/// Smart Copy, Smart Paste, Smart Quotes, and other substitution options menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.substitutionOptions")
let UIMenuSubstitutionOptions: UIMenu.Identifier

/// Transformations menu contained within Edit menu (contains Make Uppercase, Make Lowercase, Capitalize)
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.transformations")
let UIMenuTransformations: UIMenu.Identifier

/// Speech menu contained within Edit menu (contains Speak, Speak..., Pause)
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.speech")
let UIMenuSpeech: UIMenu.Identifier

/// Lookup menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.lookup")
let UIMenuLookup: UIMenu.Identifier

/// Learn menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.learn")
let UIMenuLearn: UIMenu.Identifier

/// Format top-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.format")
let UIMenuFormat: UIMenu.Identifier

/// Font menu contained within Format menu (contains UIMenuTextStyle)
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.font")
let UIMenuFont: UIMenu.Identifier

/// Bigger and Smaller menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.textSize")
let UIMenuTextSize: UIMenu.Identifier

/// Show Colors menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.textColor")
let UIMenuTextColor: UIMenu.Identifier

/// Copy Style and Paste Style menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.textStylePasteboard")
let UIMenuTextStylePasteboard: UIMenu.Identifier

/// Text menu contained within Format menu (contains UIMenuAlignment and UIMenuWritingDirection)
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.text")
let UIMenuText: UIMenu.Identifier

/// Default, Right to Left, Left to Right menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.writingDirection")
let UIMenuWritingDirection: UIMenu.Identifier

/// Align Left, Center, Justify, Align Right menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.alignment")
let UIMenuAlignment: UIMenu.Identifier

/// Show/Hide and Customize Toolbar menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.toolbar")
let UIMenuToolbar: UIMenu.Identifier

/// Fullscreen menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.fullscreen")
let UIMenuFullscreen: UIMenu.Identifier

/// Minimize, Zoom menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.minimizeAndZoom")
let UIMenuMinimizeAndZoom: UIMenu.Identifier

/// Bring All to Front, Arrange in Front menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.bringAllToFront")
let UIMenuBringAllToFront: UIMenu.Identifier

/// Root-level menu
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenu.Identifier.root")
let UIMenuRoot: UIMenu.Identifier
