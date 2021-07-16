@_exported import Foundation

@available(iOS 5.0, *)
class UIReferenceLibraryViewController : UIViewController {

  /** Returns YES if any installed dictionary has a definition for the provided term.
   */
  class func dictionaryHasDefinition(forTerm term: String) -> Bool

  /** Returns YES if any installed dictionary has a definition for the provided term.
   */
  @available(swift, obsoleted: 3, renamed: "dictionaryHasDefinition(forTerm:)")
  class func dictionaryHasDefinitionForTerm(_ term: String) -> Bool

  /** Initializes an instance of a UIReferenceLibraryViewController with the term provided.
   */
  init(term: String)
  init(coder: NSCoder)
  @available(*, unavailable)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  @available(*, unavailable)
  convenience init()
}
