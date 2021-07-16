@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontPickerViewController.Configuration")
typealias UIFontPickerViewControllerConfiguration = UIFontPickerViewController.Configuration
extension UIFontPickerViewController {
  @available(iOS 13.0, *)
  class Configuration : NSObject, NSCopying {
    var includeFaces: Bool
    var displayUsingSystemFont: Bool
    var filteredTraits: UIFontDescriptor.SymbolicTraits
    @NSCopying var filteredLanguagesPredicate: NSPredicate?
    class func filterPredicate(forFilteredLanguages filteredLanguages: [String]) -> NSPredicate?
    @available(swift, obsoleted: 3, renamed: "filterPredicate(forFilteredLanguages:)")
    class func filterPredicateForFilteredLanguages(_ filteredLanguages: [String]) -> NSPredicate?
    init()
    @available(iOS 13.0, *)
    func copy(with zone: NSZone? = nil) -> Any
  }
}
