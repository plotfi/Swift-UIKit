@_exported import Foundation

protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func willPresentSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didPresentSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func willDismissSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didDismissSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func presentSearchController(_ searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(iOS 8.0, *)
  func updateSearchResults(for searchController: UISearchController)
  @available(swift, obsoleted: 3, renamed: "updateSearchResults(for:)")
  func updateSearchResultsForSearchController(_ searchController: UISearchController)
  @available(iOS, unavailable)
  optional func updateSearchResults(for searchController: UISearchController, selecting searchSuggestion: UISearchSuggestion)
  @available(swift, obsoleted: 3, renamed: "updateSearchResults(for:selecting:)")
  @available(iOS, unavailable)
  optional func updateSearchResultsForSearchController(_ searchController: UISearchController, selectingSearchSuggestion searchSuggestion: UISearchSuggestion)
}
@available(iOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  @available(swift, obsoleted: 3, renamed: "isActive")
  var active: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  @available(iOS, introduced: 8.0, deprecated: 12.0)
  var dimsBackgroundDuringPresentation: Bool
  @available(iOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  @available(iOS 13.0, *)
  var automaticallyShowsSearchResultsController: Bool
  @available(iOS 13.0, *)
  var showsSearchResultsController: Bool
  @available(iOS 13.0, *)
  var automaticallyShowsCancelButton: Bool
  @available(iOS 13.0, *)
  var automaticallyShowsScopeBar: Bool
  @available(iOS, unavailable)
  var searchSuggestions: [UISearchSuggestion]?
  @available(iOS, unavailable)
  var searchControllerObservedScrollView: UIScrollView?
  convenience init()
  @available(iOS 8.0, *)
  func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func interactionControllerForPresentation(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController?
  @available(iOS 8.0, *)
  func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  @available(iOS 8.0, *)
  func animateTransition(using transitionContext: UIViewControllerContextTransitioning)

  /// A conforming object implements this method if the transition it creates can
  /// be interrupted. For example, it could return an instance of a
  /// UIViewPropertyAnimator. It is expected that this method will return the same
  /// instance for the life of a transition.
  @available(iOS 10.0, *)
  func interruptibleAnimator(using transitionContext: UIViewControllerContextTransitioning) -> UIViewImplicitlyAnimating
  @available(iOS 8.0, *)
  func animationEnded(_ transitionCompleted: Bool)
}
