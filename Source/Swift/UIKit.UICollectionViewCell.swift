@_exported import Foundation

@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionViewCell.DragState")
typealias UICollectionViewCellDragState = UICollectionViewCell.DragState
extension UICollectionViewCell {
  @available(iOS 11.0, *)
  enum DragState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UICollectionViewCell.DragState { get }
    case lifting
    @available(swift, obsoleted: 3, renamed: "lifting")
    static var Lifting: UICollectionViewCell.DragState { get }
    case dragging
    @available(swift, obsoleted: 3, renamed: "dragging")
    static var Dragging: UICollectionViewCell.DragState { get }
  }
}
@available(iOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func apply(_ layoutAttributes: UICollectionViewLayoutAttributes)
  @available(swift, obsoleted: 3, renamed: "apply(_:)")
  func applyLayoutAttributes(_ layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  @available(swift, obsoleted: 3, renamed: "willTransition(from:to:)")
  func willTransitionFromLayout(_ oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  func didTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  @available(swift, obsoleted: 3, renamed: "didTransition(from:to:)")
  func didTransitionFromLayout(_ oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  @available(iOS 8.0, *)
  func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "preferredLayoutAttributesFitting(_:)")
  func preferredLayoutAttributesFittingAttributes(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(iOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {

  /// Returns the current configuration state for the cell.
  /// To add your own custom state(s), override the getter and call super to obtain an instance with the
  /// system properties set, then set your own custom states as desired.
  @available(iOS 14.0, *)
  var __configurationState: __UICellConfigurationState { get }

  /// Requests the cell update its configuration for its current state. This method is called automatically
  /// when the cell's `configurationState` may have changed, as well as in other circumstances where an
  /// update may be required. Multiple requests may be coalesced into a single update at the appropriate time.
  @available(iOS 14.0, *)
  func setNeedsUpdateConfiguration()

  /// Subclasses should override this method and update the cell's configuration using the state provided.
  /// This method should not be called directly, use `setNeedsUpdateConfiguration` to request an update.
  @available(iOS 14.0, *)
  func __updateConfiguration(using state: __UICellConfigurationState)

  /// Subclasses should override this method and update the cell's configuration using the state provided.
  /// This method should not be called directly, use `setNeedsUpdateConfiguration` to request an update.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__updateConfiguration(using:)")
  func __updateConfigurationUsingState(_ state: __UICellConfigurationState)

  /// Setting a content configuration replaces the existing contentView of the cell with a new content view instance from the configuration,
  /// or directly applies the configuration to the existing content view if the configuration is compatible with the existing content view type.
  /// The default value is nil. After a configuration has been set, setting this property to nil will replace the current content view with a new content view.
  @available(iOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?

  /// When YES, the cell will automatically call -updatedConfigurationForState: on its `contentConfiguration` when the cell's
  /// configuration state changes, and apply the updated configuration back to the cell. The default value is YES.
  @available(iOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  var isSelected: Bool
  @available(swift, obsoleted: 3, renamed: "isSelected")
  var selected: Bool
  var isHighlighted: Bool
  @available(swift, obsoleted: 3, renamed: "isHighlighted")
  var highlighted: Bool
  @available(iOS 11.0, *)
  func dragStateDidChange(_ dragState: UICollectionViewCell.DragState)

  /// Setting a background configuration supersedes the cell's backgroundView and selectedBackgroundView. The default value is nil.
  @available(iOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?

  /// When YES, the cell will automatically call -updatedConfigurationForState: on its `backgroundConfiguration` when the cell's
  /// configuration state changes, and apply the updated configuration back to the cell. The default value is YES.
  @available(iOS 14.0, *)
  var automaticallyUpdatesBackgroundConfiguration: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UICellConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UICellConfigurationState)
}
