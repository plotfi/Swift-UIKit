@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UISearchBar.Icon")
typealias UISearchBarIcon = UISearchBar.Icon
extension UISearchBar {
  enum Icon : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case search
    @available(swift, obsoleted: 3, renamed: "search")
    static var Search: UISearchBar.Icon { get }
    case clear
    @available(swift, obsoleted: 3, renamed: "clear")
    static var Clear: UISearchBar.Icon { get }
    case bookmark
    @available(swift, obsoleted: 3, renamed: "bookmark")
    static var Bookmark: UISearchBar.Icon { get }
    case resultsList
    @available(swift, obsoleted: 3, renamed: "resultsList")
    static var ResultsList: UISearchBar.Icon { get }
  }
  @available(iOS 7.0, *)
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UISearchBar.Style { get }
    case prominent
    @available(swift, obsoleted: 3, renamed: "prominent")
    static var Prominent: UISearchBar.Style { get }
    case minimal
    @available(swift, obsoleted: 3, renamed: "minimal")
    static var Minimal: UISearchBar.Style { get }
  }
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UISearchBar.Style")
typealias UISearchBarStyle = UISearchBar.Style
@available(iOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  convenience init()
  init(frame: CGRect)
  init?(coder: NSCoder)
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var showsBookmarkButton: Bool
  @available(iOS 13.0, *)
  var searchTextField: UISearchTextField { get }
  var showsCancelButton: Bool
  @available(iOS 3.2, *)
  var showsSearchResultsButton: Bool
  @available(iOS 3.2, *)
  var isSearchResultsButtonSelected: Bool
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "isSearchResultsButtonSelected")
  var searchResultsButtonSelected: Bool
  @available(iOS 3.0, *)
  func setShowsCancelButton(_ showsCancelButton: Bool, animated: Bool)

  /// Use this method to modify the contents of the Unified Content Bar, shown on top of the keyboard when search is engaged.
  /// You may modify the returned inputAssistantItem to add to or replace the existing items on the bar.
  /// Modifications made to the returned UITextInputAssistantItem are reflected automatically.
  @available(iOS 9.0, *)
  var inputAssistantItem: UITextInputAssistantItem { get }
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  var searchBarStyle: UISearchBar.Style
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isTranslucent")
  var translucent: Bool
  @available(iOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(iOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(iOS 3.0, *)
  var showsScopeBar: Bool
  @available(iOS 13.0, *)
  func setShowsScope(_ show: Bool, animated animate: Bool)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 4.2, renamed: "setShowsScope(_:animated:)")
  func setShowsScopeBar(_ show: Bool, animated animate: Bool)
  var inputAccessoryView: UIView?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(iOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:barMetrics:)")
  func setBackgroundImage(_ backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:barMetrics:)")
  func backgroundImageForBarPosition(_ barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setSearchFieldBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setSearchFieldBackgroundImage(_:for:)")
  func setSearchFieldBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControl.State)
  @available(iOS 5.0, *)
  func searchFieldBackgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "searchFieldBackgroundImage(for:)")
  func searchFieldBackgroundImageForState(_ state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setImage(_ iconImage: UIImage?, for icon: UISearchBar.Icon, state: UIControl.State)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setImage(_:for:state:)")
  func setImage(_ iconImage: UIImage?, forSearchBarIcon icon: UISearchBar.Icon, state: UIControl.State)
  @available(iOS 5.0, *)
  func image(for icon: UISearchBar.Icon, state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "image(for:state:)")
  func imageForSearchBarIcon(_ icon: UISearchBar.Icon, state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setScopeBarButtonBackgroundImage(_:for:)")
  func setScopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControl.State)
  @available(iOS 5.0, *)
  func scopeBarButtonBackgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "scopeBarButtonBackgroundImage(for:)")
  func scopeBarButtonBackgroundImageForState(_ state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State)
  @available(iOS 5.0, *)
  func scopeBarButtonDividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "scopeBarButtonDividerImage(forLeftSegmentState:rightSegmentState:)")
  func scopeBarButtonDividerImageForLeftSegmentState(_ leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setScopeBarButtonTitleTextAttributes(_:for:)")
  func setScopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, forState state: UIControl.State)
  @available(iOS 5.0, *)
  func scopeBarButtonTitleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "scopeBarButtonTitleTextAttributes(for:)")
  func scopeBarButtonTitleTextAttributesForState(_ state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(iOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  func setPositionAdjustment(_ adjustment: UIOffset, for icon: UISearchBar.Icon)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setPositionAdjustment(_:for:)")
  func setPositionAdjustment(_ adjustment: UIOffset, forSearchBarIcon icon: UISearchBar.Icon)
  @available(iOS 5.0, *)
  func positionAdjustment(for icon: UISearchBar.Icon) -> UIOffset
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "positionAdjustment(for:)")
  func positionAdjustmentForSearchBarIcon(_ icon: UISearchBar.Icon) -> UIOffset
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 11.0, *)
  var smartQuotesType: UITextSmartQuotesType
  @available(iOS 11.0, *)
  var smartDashesType: UITextSmartDashesType
  @available(iOS 11.0, *)
  var smartInsertDeleteType: UITextSmartInsertDeleteType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var isSecureTextEntry: Bool
  @available(iOS 10.0, *)
  var textContentType: UITextContentType!
  @available(iOS 12.0, *)
  @NSCopying var passwordRules: UITextInputPasswordRules?
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidEndEditing(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
  @available(iOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "searchBar(_:shouldChangeTextIn:replacementText:)")
  optional func searchBar(_ searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 3.2, *)
  optional func searchBarResultsListButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
