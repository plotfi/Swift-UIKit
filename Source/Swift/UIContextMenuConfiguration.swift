@_exported import Foundation


/**
 * @abstract Return a UIAction-based UIMenu describing the desired action hierarchy.
 *
 * @param suggestedActions  An array of suggested actions gathered from the UIResponder chain. You may choose to include
 *                          some of these actions in the hierarchy returned from this block to display them in the resulting menu.
 */
typealias UIContextMenuActionProvider = ([UIMenuElement]) -> UIMenu?

/**
 * @abstract Return a UIViewController to be displayed as this menu's preview component.
 */
typealias UIContextMenuContentPreviewProvider = () -> UIViewController?
@available(iOS 13.0, *)
class UIContextMenuConfiguration : NSObject {
  var identifier: NSCopying { get }

  /**
   * @abstract Returns a UIContextMenuConfiguration.
   *
   * @param identifier       Optional unique identifier. If omitted, an NSUUID will be generated. May be used to
   *                         identify this configuration throughout the interaction's lifecycle.
   * @param previewProvider  Optional preview view controller provider block, called when the menu is about to be presented.
   * @param actionProvider   Optional action provider block, called when the menu is about to be presented.
   */
  convenience init(identifier: NSCopying?, previewProvider: UIContextMenuContentPreviewProvider?, actionProvider: UIContextMenuActionProvider? = nil)

  /**
   * @abstract Returns a UIContextMenuConfiguration.
   *
   * @param identifier       Optional unique identifier. If omitted, an NSUUID will be generated. May be used to
   *                         identify this configuration throughout the interaction's lifecycle.
   * @param previewProvider  Optional preview view controller provider block, called when the menu is about to be presented.
   * @param actionProvider   Optional action provider block, called when the menu is about to be presented.
   */
  @available(*, unavailable, renamed: "init(identifier:previewProvider:actionProvider:)", message: "Not available in Swift")
  class func configurationWithIdentifier(_ identifier: NSCopying?, previewProvider: UIContextMenuContentPreviewProvider?, actionProvider: UIContextMenuActionProvider? = nil) -> Self
  init()
}
