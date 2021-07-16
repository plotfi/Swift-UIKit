@_exported import Foundation

@available(iOS, unavailable)
protocol UISearchSuggestion : NSObjectProtocol {

  /// The localized suggestion that will be displayed as the search string
  var localizedSuggestion: String? { get }

  /// The localized description used as accessibility string
  optional var localizedDescription: String? { get }

  /// Icon that represents this search suggestion item
  optional var iconImage: UIImage? { get }
}

/// A concrete container for search suggestion string and optional image and associated information for providing shortcuts in search experience on tvOS.
@available(iOS, unavailable)
class UISearchSuggestionItem : NSObject, UISearchSuggestion {

  /// Returns a new search suggestion object with a specified suggestion string.
  @available(*, unavailable, message: "Use init(string suggestionString: String) instead.")
  class func suggestion(withLocalizedSuggestion suggestion: String) -> Self

  /// Returns a new search suggestion object with a specified suggestion string.
  @available(swift, obsoleted: 3, renamed: "suggestion(withLocalizedSuggestion:)")
  @available(*, unavailable, message: "Use init(string suggestionString: String) instead.")
  class func suggestionWithLocalizedSuggestion(_ suggestion: String) -> Self

  /// Returns a new search suggestion object with a specified suggestion string and a description string.
  @available(*, unavailable, message: "Use init(string suggestionString: String, descriptionString: String?) instead.")
  class func suggestion(withLocalizedSuggestion suggestion: String, descriptionString description: String?) -> Self

  /// Returns a new search suggestion object with a specified suggestion string and a description string.
  @available(swift, obsoleted: 3, renamed: "suggestion(withLocalizedSuggestion:descriptionString:)")
  @available(*, unavailable, message: "Use init(string suggestionString: String, descriptionString: String?) instead.")
  class func suggestionWithLocalizedSuggestion(_ suggestion: String, descriptionString description: String?) -> Self

  /// Returns a new search suggestion object with a specified suggestion string, description string, and a search icon image.
  @available(*, unavailable, message: "Use init(string suggestionString: String, descriptionString: String?, iconImage: UIImage?) instead.")
  class func suggestion(withLocalizedSuggestion suggestion: String, descriptionString description: String?, iconImage: UIImage?) -> Self

  /// Returns a new search suggestion object with a specified suggestion string, description string, and a search icon image.
  @available(swift, obsoleted: 3, renamed: "suggestion(withLocalizedSuggestion:descriptionString:iconImage:)")
  @available(*, unavailable, message: "Use init(string suggestionString: String, descriptionString: String?, iconImage: UIImage?) instead.")
  class func suggestionWithLocalizedSuggestion(_ suggestion: String, descriptionString description: String?, iconImage: UIImage?) -> Self

  /// Initializes a search suggestion object with a specified search suggestion string.
  init(localizedSuggestion suggestion: String)

  /// Initializes a search suggestion object with a specified search suggestion string and a description string.
  init(localizedSuggestion suggestion: String, localizedDescription description: String?)

  /// Initializes a search suggestion object with a specified search suggestion string, a description string, and a search icon image.
  init(localizedSuggestion suggestion: String, localizedDescription description: String?, iconImage: UIImage?)

  /// The localized suggestion that will be displayed as the search string
  var localizedSuggestion: String? { get }

  /// The localized description used as accessibility string
  var localizedDescription: String? { get }

  /// Icon that represents this search suggestion item
  var iconImage: UIImage? { get }
  init()
}
