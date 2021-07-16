@_exported import Foundation

@available(iOS, introduced: 5.0, deprecated: 9.0, message: "Access destinationViewController.popoverPresentationController from your segue's performHandler or override of -perform")
class UIStoryboardPopoverSegue : UIStoryboardSegue {
  var popoverController: UIPopoverController { get }
  @available(iOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: @escaping () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  @available(*, unavailable)
  convenience init()
}
