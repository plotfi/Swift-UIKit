@_exported import Foundation

@available(iOS 5.0, *)
class UIStoryboardSegue : NSObject {
  @available(iOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: @escaping () -> Void)
  @available(iOS 6.0, *)
  @available(*, unavailable, renamed: "init(identifier:source:destination:performHandler:)", message: "Not available in Swift")
  class func segueWithIdentifier(_ identifier: String?, source: UIViewController, destination: UIViewController, performHandler: @escaping () -> Void) -> Self
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  @available(*, unavailable)
  convenience init()
  var identifier: String? { get }
  var source: UIViewController { get }
  @available(swift, obsoleted: 3, renamed: "source")
  var sourceViewController: UIViewController { get }
  var destination: UIViewController { get }
  @available(swift, obsoleted: 3, renamed: "destination")
  var destinationViewController: UIViewController { get }

  /// Subclasses can override this method to augment or replace the effect of this segue. For example, to animate alongside the effect of a Modal Presentation segue, an override of this method can call super, then send -animateAlongsideTransition:completion: to the transitionCoordinator of the destinationViewController.
  /// The segue runtime will call +[UIView setAnimationsAreEnabled:] prior to invoking this method, based on the value of the Animates checkbox in the Properties Inspector for the segue.
  func perform()
}

/// Encapsulates the source of a prospective unwind segue.
/// You do not create instances of this class directly. Instead, UIKit creates an instance of this class and sends -allowedChildViewControllersForUnwindingFromSource: to each ancestor of the sourceViewController until it finds a view controller which returns YES from -canPerformUnwindSegueAction:fromViewController:sender:.
@available(iOS 9.0, *)
class UIStoryboardUnwindSegueSource : NSObject {
  @available(*, unavailable)
  init()
  var source: UIViewController { get }
  @available(swift, obsoleted: 3, renamed: "source")
  var sourceViewController: UIViewController { get }
  var unwindAction: Selector { get }
  var sender: Any? { get }
}
