@_exported import Foundation

@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIDocumentBrowserAction.Availability")
typealias UIDocumentBrowserActionAvailability = UIDocumentBrowserAction.Availability
extension UIDocumentBrowserAction {
  @available(iOS 11.0, *)
  struct Availability : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    typealias RawValue = Int
    typealias Element = UIDocumentBrowserAction.Availability
    typealias ArrayLiteralElement = UIDocumentBrowserAction.Availability
    static var menu: UIDocumentBrowserAction.Availability { get }
    @available(swift, obsoleted: 3, renamed: "menu")
    static var Menu: UIDocumentBrowserAction.Availability { get }
    static var navigationBar: UIDocumentBrowserAction.Availability { get }
    @available(swift, obsoleted: 3, renamed: "navigationBar")
    static var NavigationBar: UIDocumentBrowserAction.Availability { get }
  }
}

/// UIDocumentBrowserAction instances are custom, contextual actions that are presented to the user by a UIDocumentBrowserViewController.
@available(iOS 11.0, *)
class UIDocumentBrowserAction : NSObject {
  @available(*, unavailable)
  convenience init()
  init(identifier: String, localizedTitle: String, availability: UIDocumentBrowserAction.Availability, handler: @escaping ([URL]) -> Void)
  var identifier: String { get }
  var localizedTitle: String { get }
  var availability: UIDocumentBrowserAction.Availability { get }
  var image: UIImage?

  /// Allows clients to restrict the action to only a specific set of content types. Default: [kUTTypeItem]
  var supportedContentTypes: [String]

  /// If NO, the action is only available, if there is only one item selected. Default: YES.
  var supportsMultipleItems: Bool
}
