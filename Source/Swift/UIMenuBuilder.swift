@_exported import Foundation


/// Encapsulates access and mutation for a menu hierarchy.
@available(iOS 13.0, *)
protocol UIMenuBuilder {

  /// Which system we are building for.
  var system: UIMenuSystem { get }

  /// Fetch the identified menu.
  ///
  /// @param identifier The identifier of the menu to fetch.
  /// @return The menu with the given identifier, or `nil` if no such menu.
  func menu(for identifier: UIMenu.Identifier) -> UIMenu?

  /// Fetch the identified menu.
  ///
  /// @param identifier The identifier of the menu to fetch.
  /// @return The menu with the given identifier, or `nil` if no such menu.
  @available(swift, obsoleted: 3, renamed: "menu(for:)")
  func menuForIdentifier(_ identifier: UIMenu.Identifier) -> UIMenu?

  /// Fetch the identified action.
  ///
  /// @param identifier The identifier of the action to fetch.
  /// @return The action with the given identifier, or `nil` if no such action.
  func action(for identifier: UIAction.Identifier) -> UIAction?

  /// Fetch the identified action.
  ///
  /// @param identifier The identifier of the action to fetch.
  /// @return The action with the given identifier, or `nil` if no such action.
  @available(swift, obsoleted: 3, renamed: "action(for:)")
  func actionForIdentifier(_ identifier: UIAction.Identifier) -> UIAction?

  /// Fetch the identified command.
  ///
  /// @param action The action of the command to fetch.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return The command with the given action and property list, or `nil` if no such command.
  func __command(forAction action: Selector, propertyList: Any?) -> UICommand?

  /// Fetch the identified command.
  ///
  /// @param action The action of the command to fetch.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return The command with the given action and property list, or `nil` if no such command.
  @available(swift, obsoleted: 3, renamed: "__command(forAction:propertyList:)")
  func __commandForAction(_ action: Selector, propertyList: Any?) -> UICommand?

  /// Replace an identified menu with a menu.
  ///
  /// @param replacedIdentifier The identifier of the menu to be replaced.
  /// @param replacementGroup The replacement menu.
  func replace(menu replacedIdentifier: UIMenu.Identifier, with replacementMenu: UIMenu)

  /// Replace an identified menu with a menu.
  ///
  /// @param replacedIdentifier The identifier of the menu to be replaced.
  /// @param replacementGroup The replacement menu.
  @available(swift, obsoleted: 3, renamed: "replace(menu:with:)")
  func replaceMenuForIdentifier(_ replacedIdentifier: UIMenu.Identifier, withMenu replacementMenu: UIMenu)

  /// Replace the children of an identified parent menu.
  ///
  /// @param parentIdentifier The identifier of the parent menu.
  /// @param childrenBlock A block that returns the new children, given the old children.
  func replaceChildren(ofMenu parentIdentifier: UIMenu.Identifier, from childrenBlock: ([UIMenuElement]) -> [UIMenuElement])

  /// Replace the children of an identified parent menu.
  ///
  /// @param parentIdentifier The identifier of the parent menu.
  /// @param childrenBlock A block that returns the new children, given the old children.
  @available(swift, obsoleted: 3, renamed: "replaceChildren(ofMenu:from:)")
  func replaceChildrenOfMenuForIdentifier(_ parentIdentifier: UIMenu.Identifier, fromChildrenBlock childrenBlock: ([UIMenuElement]) -> [UIMenuElement])

  /// Insert a sibling menu before an identified sibling menu.
  ///
  /// @param siblingGroup The sibling menu to insert.
  /// @param siblingIdentifier The identifier of the sibling menu to insert before.
  func insertSibling(_ siblingMenu: UIMenu, beforeMenu siblingIdentifier: UIMenu.Identifier)

  /// Insert a sibling menu before an identified sibling menu.
  ///
  /// @param siblingGroup The sibling menu to insert.
  /// @param siblingIdentifier The identifier of the sibling menu to insert before.
  @available(swift, obsoleted: 3, renamed: "insertSibling(_:beforeMenu:)")
  func insertSiblingMenu(_ siblingMenu: UIMenu, beforeMenuForIdentifier siblingIdentifier: UIMenu.Identifier)

  /// Insert a sibling menu after an identified sibling menu.
  ///
  /// @param siblingGroup The sibling menu to insert.
  /// @param siblingIdentifier The identifier of the sibling menu to insert after.
  func insertSibling(_ siblingMenu: UIMenu, afterMenu siblingIdentifier: UIMenu.Identifier)

  /// Insert a sibling menu after an identified sibling menu.
  ///
  /// @param siblingGroup The sibling menu to insert.
  /// @param siblingIdentifier The identifier of the sibling menu to insert after.
  @available(swift, obsoleted: 3, renamed: "insertSibling(_:afterMenu:)")
  func insertSiblingMenu(_ siblingMenu: UIMenu, afterMenuForIdentifier siblingIdentifier: UIMenu.Identifier)

  /// Insert a child menu at the start of an identified parent menu.
  ///
  /// @param childGroup The child menu to insert.
  /// @param parentIdentifier The identifier of the parent menu to insert at the start of.
  func insertChild(_ childMenu: UIMenu, atStartOfMenu parentIdentifier: UIMenu.Identifier)

  /// Insert a child menu at the start of an identified parent menu.
  ///
  /// @param childGroup The child menu to insert.
  /// @param parentIdentifier The identifier of the parent menu to insert at the start of.
  @available(swift, obsoleted: 3, renamed: "insertChild(_:atStartOfMenu:)")
  func insertChildMenu(_ childMenu: UIMenu, atStartOfMenuForIdentifier parentIdentifier: UIMenu.Identifier)

  /// Insert a child menu at the end of an identified parent menu.
  ///
  /// @param childGroup The child menu to insert.
  /// @param parentIdentifier The identifier of the parent menu to insert at the end of.
  func insertChild(_ childMenu: UIMenu, atEndOfMenu parentIdentifier: UIMenu.Identifier)

  /// Insert a child menu at the end of an identified parent menu.
  ///
  /// @param childGroup The child menu to insert.
  /// @param parentIdentifier The identifier of the parent menu to insert at the end of.
  @available(swift, obsoleted: 3, renamed: "insertChild(_:atEndOfMenu:)")
  func insertChildMenu(_ childMenu: UIMenu, atEndOfMenuForIdentifier parentIdentifier: UIMenu.Identifier)

  /// Remove an identified menu.
  ///
  /// @param removedIdentifier The menu to remove.
  func remove(menu removedIdentifier: UIMenu.Identifier)

  /// Remove an identified menu.
  ///
  /// @param removedIdentifier The menu to remove.
  @available(swift, obsoleted: 3, renamed: "remove(menu:)")
  func removeMenuForIdentifier(_ removedIdentifier: UIMenu.Identifier)
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenuBuilder {
  /// Fetch the identified command.
  ///
  /// - Parameters:
  ///   - action: The action of the command to find.
  ///   - propertyList: Property list object to distinguish commands, if needed.
  /// - Returns: The command with the given action and property list, or `nil` if no such command.
  func command(for action: Selector, propertyList: Any? = nil) -> UICommand?
}
