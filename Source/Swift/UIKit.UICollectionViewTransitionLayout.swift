@_exported import Foundation

@available(iOS 7.0, *)
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
  func updateValue(_ value: CGFloat, forAnimatedKey key: String)
  func value(forAnimatedKey key: String) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "value(forAnimatedKey:)")
  func valueForAnimatedKey(_ key: String) -> CGFloat
}
