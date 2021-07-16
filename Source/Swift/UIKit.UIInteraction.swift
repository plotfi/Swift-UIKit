@_exported import Foundation

@available(iOS 11.0, *)
protocol UIInteraction : NSObjectProtocol {
  weak var view: @sil_weak UIView? { get }
  func willMove(to view: UIView?)
  @available(swift, obsoleted: 3, renamed: "willMove(to:)")
  func willMoveToView(_ view: UIView?)
  func didMove(to view: UIView?)
  @available(swift, obsoleted: 3, renamed: "didMove(to:)")
  func didMoveToView(_ view: UIView?)
}
extension UIView {
  @available(iOS 11.0, *)
  func addInteraction(_ interaction: UIInteraction)
  @available(iOS 11.0, *)
  func removeInteraction(_ interaction: UIInteraction)
  @available(iOS 11.0, *)
  var interactions: [UIInteraction]
}
