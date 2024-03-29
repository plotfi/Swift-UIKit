@_exported import Foundation

@available(iOS 14.0, *)
class UIDeferredMenuElement : UIMenuElement {

  /**
   * @abstract Returns a placeholder menu element that is replaced with the result of the block's
   *           completion handler. A loading UI takes the place of the element in the menu
   *           until it is fulfilled. While the element may be stored and re-used across menus, its block is
   *           called only once, when the element is first encountered in a menu.
   *
   * @param elementProvider  Called by the system to request the deferred menu items when the containing menu is presented.
   *                         Call this block's completion handler when the menu items are available.
   */
  convenience init(_ elementProvider: @escaping (@escaping ([UIMenuElement]) -> Void) -> Void)

  /**
   * @abstract Returns a placeholder menu element that is replaced with the result of the block's
   *           completion handler. A loading UI takes the place of the element in the menu
   *           until it is fulfilled. While the element may be stored and re-used across menus, its block is
   *           called only once, when the element is first encountered in a menu.
   *
   * @param elementProvider  Called by the system to request the deferred menu items when the containing menu is presented.
   *                         Call this block's completion handler when the menu items are available.
   */
  @available(swift, obsoleted: 3, renamed: "init(_:)")
  convenience init(provider elementProvider: @escaping (@escaping ([UIMenuElement]) -> Void) -> Void)

  /**
   * @abstract Returns a placeholder menu element that is replaced with the result of the block's
   *           completion handler. A loading UI takes the place of the element in the menu
   *           until it is fulfilled. While the element may be stored and re-used across menus, its block is
   *           called only once, when the element is first encountered in a menu.
   *
   * @param elementProvider  Called by the system to request the deferred menu items when the containing menu is presented.
   *                         Call this block's completion handler when the menu items are available.
   */
  @available(*, unavailable, renamed: "init(_:)", message: "Not available in Swift")
  class func elementWithProvider(_ elementProvider: @escaping (@escaping ([UIMenuElement]) -> Void) -> Void) -> Self
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
}
